class Event < ApplicationRecord
  # An event can have many attendees (users). The 'attendances' table is used as a 'through' table.
  has_many :attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :attendances, source: :attendee

  # An event belongs to a creator (a user who created the event)
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  validates :creator, presence: true

  scope :upcoming, -> { where('time > ?', Time.now) }
  scope :past, -> { where('time < ?', Time.now) }
end
