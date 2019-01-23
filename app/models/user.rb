class User < ApplicationRecord
  has_secure_password


  has_many :dogs, dependent: :destroy
  accepts_nested_attributes_for :dogs
  has_many :appointments, through: :dogs

  validates :full_name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, numericality: {only_integer: true}
  validates :neighborhood, presence: true

end
