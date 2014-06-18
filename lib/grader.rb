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

  def trend(entries)
    consecutive_down = 0

    entries.each do |entry|
      if entry == :down
        consecutive_down +=1
      elsif entry == :up
        consecutive_down = 0
      end
    end

    if consecutive_down >=3
      "in decline"
    else
      "not in decline"
    end
  end
end