class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :name,  presence: true, length: { maximum: 50, minimum: 3}, uniqueness: true
    validates :email,  presence: true, length: { maximum: 255, minimum: 7}, uniqueness: { case_sensitive: false }
    validates :password,  presence: true, length: { maximum: 50, minimum: 8}
    
end
