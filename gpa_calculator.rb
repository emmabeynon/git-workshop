class GpaCalculator
  MAPPING = {
    "A" => 4,
    "A-" => 3.7,
    "B+" => 3.3,
    "B" => 3,
    "B-" => 2.7,
    "C+" => 2.3,
    "C" => 2,
    "C-" => 1.7,
    "D+" => 1.3,
    "D" => 1,
    "D-" => 0.7,
    "E+" => 0.5,
    "E" => 0.2,
    "E-" => 0.1,
    "F" => 0,
    "U" => -1
  }

  attr_reader :name, :grades

  def initialize(name, grades)
    @name = name
    @grades = grades
  end

  def gpa
    return 0.0 if scores.empty?
    puts scores
    (scores.sum / scores.count).round(1)
  end

  private

  def scores
    @grades.map { |grade| score_for(grade) }.compact
  end

  def score_for(grade)
    MAPPING.fetch(grade.to_s, nil).to_f
  end
end
