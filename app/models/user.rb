class User < ApplicationRecord
  has_many :dogs, dependent: :destroy
  has_many :appointments, through: :dogs

  validates :full_name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, numericality: {only_integer: true}
  validates :neighborhood, presence: true

  def dog_count
      dogs.count
    end

end
