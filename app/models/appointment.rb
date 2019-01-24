class Appointment < ApplicationRecord
  belongs_to :dog
  belongs_to :careservice
  has_many :services, through: :careservice
  has_many :caregivers, through: :careservice
end
