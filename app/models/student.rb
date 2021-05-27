class Student < ActiveRecord::Base
    # returns the Cohort instance for this student
    belongs_to :cohort
end