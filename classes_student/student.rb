class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def get_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(student_name)
    return @student_name = student_name
  end

  def set_cohort(cohort)
    return @cohort = cohort
  end

  def student_can_talk()
    return "I can talk!"
  end

  def say_fav_language(fav_language)
    return "I love #{fav_language}"
  end

end
