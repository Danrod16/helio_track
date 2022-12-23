class Client < ApplicationRecord
    validates :name, presence: true
    validates :industry, presence: true, inclusion: { in: %w(Healthcare Technology Finance Retail Education Other) }    
    validates :target, presence: true
    validates  :website, format: { with: Company::URL_REGEXP, message: 'You provided invalid URL' }
    belongs_to :company
    has_many :projects, dependent: :destroy
end
