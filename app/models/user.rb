class User < ActiveRecord::Base
    has_many :posts
    
    has_secure_password
    #provides a reader/writer method for password

    validates :username, uniqueness: true

    def self.search(query)
        where("username LIKE ?", "%#{query}%")
    end
end