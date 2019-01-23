class Careservice < ApplicationRecord
  belongs_to :caregiver
  belongs_to :service
  has_many :appointments



end
