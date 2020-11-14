class Medicine < ApplicationRecord
    belongs_to :category
    has_many :addstock, dependent: :destroy
end
