class Project < ApplicationRecord
  belongs_to :company
  belongs_to :client
  validates :name, presence: true
  validates :overview, presence: true
  validates :status, presence: true, inclusion: { in: %w(active completed pending) }
  has_many :deliverables, dependent: :destroy
end
