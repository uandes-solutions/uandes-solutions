class LegalPerson < ApplicationRecord
  validates :name, presence: true
  validates :rut, presence: true, uniqueness: true

  has_many :cc_inv_leg_people
  has_many :case_coordinations, through: :cc_inv_leg_people
  
  has_and_belongs_to_many :causes
end
