class Ticket < ApplicationRecord
  belongs_to :step
  belongs_to :deliverable
  belongs_to :user
  validates  :title, presence: true
  has_many :comments, dependent: :destroy
end
