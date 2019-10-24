class Messag < ApplicationRecord
    validates :body, presence:true, length: {minimum:1, maximum:280}, uniqueness: true
    belongs_to :user
end
