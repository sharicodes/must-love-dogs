class Appointment < ApplicationRecord
  belongs_to :dog
  belongs_to :careservice
  # belongs_to :caregiver
  # belongs_to :service
end
