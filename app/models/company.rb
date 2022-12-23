class Company < ApplicationRecord
    INDUSTRIES = %w(Healthcare Technology Finance Retail Education Other)
    URL_REGEXP = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z/i
    validates :name, presence: true
    validates :industry, presence: true, inclusion: { in: INDUSTRIES }
    validates :target, presence: true
    validates :website, format: { with: URL_REGEXP, message: 'You provided invalid URL' }
    has_many :users, dependent: :destroy
    has_many :clients, dependent: :destroy
    has_many :projects, dependent: :destroy
end
