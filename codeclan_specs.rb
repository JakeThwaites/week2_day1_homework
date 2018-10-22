require('minitest/autorun')
require('minitest/rg')
require_relative('day1_week2_homework.rb')

class TestCodeclanStudent < Minitest::Test

  def test_student_name()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("Jake", student1.name)
  end

  def test_student_cohort()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("E26", student1.cohort)
  end

  def test_change_student_name()
    student1 = CodeclanStudent.new("Jake", "E26")
    student1.set_name("Borna")
    assert_equal("Borna", student1.name)
  end

  def test_change_student_cohort()
    student1 = CodeclanStudent.new("Jake", "E26")
    student1.set_cohort("E25")
    assert_equal("E25", student1.cohort)
  end

  def test_student_can_talk()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("Hello", student1.talk("Hello"))
  end

  def test_student_favourite_language()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("I love Javascript!", student1.favourite("Javascript"))
  end

end
