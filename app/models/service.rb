class Service < ApplicationRecord
  has_many :careservices
  has_many :caregivers, through: :careservices
end
