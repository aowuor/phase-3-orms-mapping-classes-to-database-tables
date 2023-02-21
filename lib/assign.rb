class Student
    attr_accessor :name, :course

    def initialize(name)
        @name = name
        @course = []


    end

    def new_enrollment(course)
        enrollment = Enrollment.new(self, course)
        @course << enrollment
        course.course << enrollment
    end

    def enrollments
        # Enrollment.course.select{|enrolled| }

    end
end

class Course
    attr_accessor :name, :course
    
    def initialize(name)
        @name = name
        @course = []
    end

    def new_enrollment(student)
        enrollment = Enrollment.new(student, self)
        @course << enrollment
        student.course << enrollment
    end
end

class Enrollment
    attr_accessor :student, :course

    def initialize(student, course)
        @student = student
        @course = course
    end  
end

student = Student.new("Ema")
course1 = Course.new("Physics")
course2 = Course.new("Chem")
course3 = Course.new("Bio")
courses = [course1, course2, course3]
puts selected = Course.new(courses)
puts student.enroll_course(courses)


