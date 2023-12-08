class User < ApplicationRecord
  # The user can attend many events. The 'attendances' table is used as a 'through' table.
  has_many :attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :attendances, source: :attended_event

  # A user can create many events (these are not the events they have attended)
  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,:lockable, :trackable
end
