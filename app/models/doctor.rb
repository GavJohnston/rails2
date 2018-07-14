class Doctor < ApplicationRecord
  belongs_to :clinic
  has_many :patients
end
