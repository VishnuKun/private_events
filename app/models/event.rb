class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_and_belongs_to_many :users

  validates :creator, presence: true
end
