class Step < ApplicationRecord
  belongs_to :journey
  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(active completed pending) }
  has_many :step_templates, dependent: :destroy
  has_many :templates, through: :step_templates
  has_many :tickets, dependent: :destroy
  has_many :users, through: :user_tasks

  def completed?
    status == "completed"
  end

  def pending?
    status == "pending"
  end

  def active?
    status == "active"
  end

end
