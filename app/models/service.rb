class Service < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :price, presence: true
  validates :start_time, presence: true
  validates :duration, presence: true
  validates :plan, presence: true
end
