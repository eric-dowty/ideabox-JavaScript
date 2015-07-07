require 'ostruct'

class Idea < ActiveRecord::Base
  belongs_to :quality
  validates :title, :body, presence: true

  def full_details
    OpenStruct.new(title: title, body: get_body, quality: get_quality, id: id.to_s)
  end

  def self.all_with_details
    all.reverse.map { |idea| idea.full_details }
  end

  private

  def get_quality
    update(quality: Quality.find_by(description: "swill")) if quality_id == nil
    quality.description
  end

  def get_body
    count = 0
    truncated = []
    body.split.each do |word|
      count += word.length + 1
      truncated << "#{word} "
      break if count >= 100
    end
    truncated.join.strip!
  end

end