class Shift < ApplicationRecord

  validates :name, presence: true, length: {maximum: 75}
  validates :start_time, presence: true
  validates :end_time, presence: true

  belongs_to :user

  searchkick 

end
