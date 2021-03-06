class User < ApplicationRecord
  has_many :appoinments
  has_many :services
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  

  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :phone_number, presence: true, uniqueness: true

end
