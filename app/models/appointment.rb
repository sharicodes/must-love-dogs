class Appointment < ApplicationRecord
  belongs_to :dog
  belongs_to :careserves
end
