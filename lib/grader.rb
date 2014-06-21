class Grader
  def translate(grades)
    grades.each_cons(2).map do |(grade1, grade2)|
      case
        when grade2 > grade1
          :up
        when grade2 < grade1
          :down
        else
          :even
      end
    end
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