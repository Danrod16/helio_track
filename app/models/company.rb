class Company < ApplicationRecord
    URL_REGEXP = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z/i
    validates :name, presence: true
    validates :industry, presence: true, inclusion: { in: %w(Healthcare Technology Finance Retail Education Other) }
    validates :target, presence: true
    validates :website, format: { with: URL_REGEXP, message: 'You provided invalid URL' }
end
