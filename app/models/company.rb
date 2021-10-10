class Company < ApplicationRecord
  has_many :vacancies

  validates :name, presence: true
  validates :description, length: { minumum: 3, maximum: 1000 }, presence: true
end
