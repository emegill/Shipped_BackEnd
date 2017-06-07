class Job < ApplicationRecord
    belongs_to :boat
    belongs_to :user
    validates :name, uniqueness: true
    validates :description, length: { minimum: 50 }
end
