=begin
Write your code for the 'Grade School' exercise in this file. Make the tests in
`grade_school_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grade-school` directory.
=end


class School
    def initialize
        @students={}
    end

    def add(name,grade)
        if @students[grade]
            @students[grade]<<name
        else
            @students[grade]=[]
            @students[grade]<<name
        end
    end

    def students(grade)
        if @students.size()==0
            return []
        end
        return @students[grade].sort()
    end

    def students_by_grade
        if @students.size()==0
            return []
        end
        array=[]
        @students.keys.sort.each do |i|
            array.push({ grade: i, students: @students[i].sort })
        end
        return array
    end
end