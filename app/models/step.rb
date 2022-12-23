class Step < ApplicationRecord
  belongs_to :journey
  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(active completed pending) }
  has_many :templates, through: :step_templates
  has_many :step_templates, dependent: :destroy
end
