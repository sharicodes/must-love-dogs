class Appointment < ApplicationRecord
  belongs_to :dog
  belongs_to :caregiver
  belongs_to :service

def find_dog
  id = self.dog_id
  Dog.all.find_by(id: id)
end

def find_caregiver
  id = self.caregiver_id
  Caregiver.all.find_by(id: id)
end

def find_service
  id = self.service_id
  Service.all.find_by(id: id)
end

end
