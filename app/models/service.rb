class Service < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :price, presence: true
  validates :start_time, presence: true
  validates :duration, presence: true
  # validates :type, presence: true
  validates :place, length: {minimum:5, maximum:40}
end
