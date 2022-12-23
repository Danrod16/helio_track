class Project < ApplicationRecord
  belongs_to :company
  belongs_to :client

  validates :name, presence: true
  validates :description, presence: true
  validates :budget, presence: true
  validates :status, presence: true, inclusion: { in: %w(active completed pending) }
end
