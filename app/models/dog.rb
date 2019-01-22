class Dog < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :careserves, through: :appointments

  validates :name, presence: true
  validates :age, numericality: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size- input small, medium or large." }
  validates :vet_name, presence: true
  validates :food_name, presence: true


  def user_name
    user.full_name
  end
end
