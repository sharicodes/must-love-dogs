class Caregiver < ApplicationRecord
  has_many :careservices
  has_many :services, through: :careservices 
end
