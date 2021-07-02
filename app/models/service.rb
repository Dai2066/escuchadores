class Service < ApplicationRecord
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
  belongs_to :user
  has_many :appointments
  has_one_attached :photo

  validates :price, presence: true
  validates :start_time, presence: true
  validates :duration, presence: true
  validates :plan, presence: true
end
