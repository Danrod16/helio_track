class Journey < ApplicationRecord
    validates :name, presence: true
    has_many :project_journeys, dependent: :destroy
    has_many :projects, through: :project_journeys
end
