class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  # On crée une sous classe creator, qui provient de User.
  has_many :event_attendees
  # Plusieurs event_attendees possible (nouvelle création de table)
  has_many :attendees, through: :event_attendees
  # A plusieurs attendees a travers les events attendees
end
