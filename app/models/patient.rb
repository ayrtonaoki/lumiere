class Patient < ApplicationRecord
  has_many :patient_exercises
  has_many :exercises, through: :patient_exercises

  validates :name, presence: true
end
