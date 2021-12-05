class User < ApplicationRecord
    has_many :goals, dependent: :destroy
end
