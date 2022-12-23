class Template < ApplicationRecord
    validates :name, presence: true
    has_many :steps, through: :step_templates
    has_many :step_templates, dependent: :destroy
end
