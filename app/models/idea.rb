class Idea < ActiveRecord::Base
  belongs_to :quality
  validates :title, :body, presence: true
end