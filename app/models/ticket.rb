class Ticket < ApplicationRecord
  belongs_to :step
  belongs_to :deliverable
  belongs_to :user
  validates  :name, presence: true
  has_many :comments, dependent: :destroy
end
