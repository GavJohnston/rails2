class Clinic < ApplicationRecord
has_many :doctors, dependent: :destroy 
validates :clinicname, presence: true,
length: { minimum: 5 } 
end
