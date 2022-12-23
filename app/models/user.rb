class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  has_many :tickets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :steps, through: :user_tasks
  has_many :user_tasks, dependent: :destroy
end
