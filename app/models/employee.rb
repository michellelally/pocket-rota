class Employee < ApplicationRecord
  validates :name, presence: true, length: {maximum: 75}
  validates :position, presence: true, length: {maximum: 25}
  validates :availability, presence: true, length: {maximum: 50}
  belongs_to :user
end

