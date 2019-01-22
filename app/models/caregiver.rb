class Caregiver < ApplicationRecord
  has_many :careservices, dependent: :destroy
  has_many :services, through: :careservices

  validates :name, presence: true
  validates :bio, presence: true
  validates :neighborhood, presence: true

end
