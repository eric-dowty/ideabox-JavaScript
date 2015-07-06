class Quality < ActiveRecord::Base
  has_many :ideas
  validates :description, presence: true
end