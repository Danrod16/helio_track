class Project < ApplicationRecord
  belongs_to :company
  belongs_to :client
  validates :name, presence: true
  validates :overview, presence: true
  validates :status, presence: true, inclusion: { in: %w(active completed pending) }
  has_many :deliverables, dependent: :destroy
  has_many :project_journeys, dependent: :destroy
  has_many :journeys, through: :project_journeys

  def completed?
    self.status == "completed"
  end

  def pending?
    self.status == "pending"
  end

  def active?
    self.status == "active"
  end
end
