class Student < ActiveRecord::Base
    # returns the Cohort instance for this student
    belongs_to :cohort

    def current_mod
        self.cohort.current_mod
    end
end