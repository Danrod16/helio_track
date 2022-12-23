class Deliverable < ApplicationRecord
    validates :name, presence: true
    validates :status, presence: true, inclusion: { in: %w(active completed pending) }
    belongs_to :project
end
