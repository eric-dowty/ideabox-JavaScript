require 'ostruct'

class Idea < ActiveRecord::Base
  belongs_to :quality
  validates :title, :body, presence: true

  def self.details(idea)
    OpenStruct.new()
  end

end