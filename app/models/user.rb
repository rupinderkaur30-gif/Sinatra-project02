class User < ActiveRecord::Base
    has_secure_password
    has_many :workouts
    has_many :exercises, through: :workouts
    validates_uniqueness_of :username
    validates_presence_of :username
end
