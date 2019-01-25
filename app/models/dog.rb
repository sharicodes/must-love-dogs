class Dog < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :caregivers, through: :appointments
  has_many :services, through: :appointments

  validates :name, presence: true
  validates :age, numericality: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size- input small, medium or large." }
  validates :vet_name, presence: true
  validates :food_name, presence: true

end
