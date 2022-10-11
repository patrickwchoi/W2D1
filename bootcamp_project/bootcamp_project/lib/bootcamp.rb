class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = [] }
    end
    def name #what is this?
        @name
    end
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(teacher)
        @teachers<<teacher
    end
    def enroll(student)
        if @students.length < @student_capacity
            @students<<student
            return true
        else 
            return false
        end
    end
    def enrolled?(student)
        @students.include?(student)
    end

    #Part 2
    def student_to_teacher_ratio
        @students.length/@teachers.length
    end
    def add_grade(student, grade)
        if @students.include?(student)
            @grades[student] << grade
            return true
        end
        return false
    end
    def num_grades(student)
        @grades[student].length
    end
    def average_grade(student)
        if @students.include?(student) && !@grades[student].empty?
            arr =  @grades[student]
            return arr.inject{|sum, el| sum + el }.to_i / arr.size
        else
            return nil
        end
    end
end
