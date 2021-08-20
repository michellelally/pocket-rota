class Event < ApplicationRecord
  validates :city, presence: true, length: {maximum: 75}
  belongs_to :user
end
