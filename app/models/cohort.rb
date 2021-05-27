class Cohort < ActiveRecord::Base
    # returns a collection of all Student instances for this cohort
    has_many :students
end