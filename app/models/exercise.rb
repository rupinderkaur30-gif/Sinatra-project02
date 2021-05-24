class Exercise < ActiveRecord::Base
    belongs_to :workout
    validates_presence_of :name, :reps, :sets, :minutes
end
