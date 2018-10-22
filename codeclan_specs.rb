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

class TestTeam < Minitest::Test

  def test_team_name
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal("Manchester United", team.name)
  end

  def test_set_new_coach_name
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    team.set_coach_name("Mourinho")
    assert_equal("Mourinho", team.coach)
  end

  def test_add_new_player
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    team.add_new_player("Scholes")
    assert_equal(["Giggs", "Beckham", "Ronaldo", "Scholes"], team.players)
  end

  def test_find_player_by_name__player_found
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal("Giggs", team.find_player_by_name("Giggs") )
  end

  def test_find_player_by_name__player_not_found
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal(nil, team.find_player_by_name("Ferdinand") )
  end

  def test_win_or_lose__win
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal(3, team.win_or_lose("win"))
  end

  def test_win_or_lose__lose
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal(0, team.win_or_lose("lose"))
  end
  
end




# ..DEPRECATED: Use assert_nil if expecting nil from codeclan_specs.rb:69. This will fail in Minitest 6.
# .........
