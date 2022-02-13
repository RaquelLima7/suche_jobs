class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :applicants
  
  validates :title, presence: true
  validates :location, presence: true
  validates :description, length: { minumum: 3, maximum: 1000 }, presence: true
  validates :requirements, presence: true
  validates :salary, presence: true
  validates :available, presence: true

  include PgSearch::Model
  pg_search_scope :search, 
                  against: [:title, :location, :description, :requirements],
                  using: {
                    tsearch: { dictionary: "english", prefix: true } 
                  }
end
