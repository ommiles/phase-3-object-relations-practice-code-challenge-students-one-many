class Cohort < ActiveRecord::Base
    # returns a collection of all Student instances for this cohort
    has_many :students

    def add_student(name, age)
        Student.create(name: name, age: age, cohort_id: Cohort.ids.sample)
    end

    def average_age
        self.students.average(:age).to_f
    end

    def total_students
        self.students.count
    end

    def self.biggest
        self.all.max { |a, b| a.students.count <=> b.students.count }
    end

    def self.sort_by_mod
        self.all.order("current_mod ASC")
    end
end