class Service < ApplicationRecord
  has_many :careservices, dependent: :destroy
  has_many :caregivers, through: :careservices
  has_many :appointments, through: :careservices
  # has_many :appointments


  def halfwalk_caregivers
    Service.first.caregivers
  end

  def fullwalk_caregivers
    Service.second.caregivers
  end

  def dogsit_caregivers
    Service.third.caregivers
  end

  def grooming_caregivers
    Service.fourth.caregivers
  end

  def vet_caregivers
    Service.fifth.caregivers
  end

end
