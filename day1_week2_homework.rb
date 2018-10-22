class CodeclanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk(what_to_say)
    what_to_say = "Hello"
    return what_to_say
  end

  def favourite(my_favourite_language)
    return "I love #{my_favourite_language}!"
  end
end
