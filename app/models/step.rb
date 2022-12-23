class Step < ApplicationRecord
  belongs_to :journey
  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(active completed pending) }
end
