class Pet < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :vaccinated, inclusion: { in: [true, false] }
end
