class Service < ApplicationRecord
  has_many :careservices, dependent: :destroy
  has_many :caregivers, through: :careservices
  has_many :dogs, through: :appointments
  has_many :appointments

end
