class Grader
  def translate(grades)
    last_grade = grades.first
    remaining_grades = grades[1..-1]

    results = []
    remaining_grades.each do |grade|

      results << case
                   when grade > last_grade
                     :up
                   when grade < last_grade
                     :down
                   else
                     :even
                 end

      last_grade = grade
    end

    results
  end
end