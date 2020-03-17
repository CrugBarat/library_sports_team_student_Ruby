require('minitest/autorun')
require('minitest/reporters')
require_relative('../student.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Ally", "G1")
  end

  def test_get_name()
    assert_equal("Ally", @student.get_name())
  end

  def test_get_cohort()
    assert_equal("G1", @student.get_cohort())
  end

  def test_set_name()
    @student.set_name("Colin")
    assert_equal("Colin", @student.get_name())
  end

  def test_set_cohort()
    @student.set_cohort("G2")
    assert_equal("G2", @student.get_cohort())
  end

  def test_student_can_talk()
    assert_equal("I can talk!", @student.student_can_talk())
  end

  def test_say_fav_language__Ruby()
    assert_equal("I love Ruby", @student.say_fav_language("Ruby"))
  end

end
