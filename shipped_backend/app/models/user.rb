class User < ApplicationRecord
    has_many :jobs
    has_many :boats, through: :jobs
end
