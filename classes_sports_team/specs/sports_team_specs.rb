require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < MiniTest::Test

  def setup()
    @players_array = ["Salah", "Firmy", "Mane", "Robertson"]
    @sports_team = SportsTeam.new("Liverpool FC", @players_array, "Klopp", 0)
  end

  def test_get_team_name()
    assert_equal("Liverpool FC", @sports_team.team_name())
  end

  def test_get_players()
    assert_equal(@players_array, @sports_team.players())
  end

  def test_get_coach()
    assert_equal("Klopp", @sports_team.coach())
  end

  def test_set_coach()
    @sports_team.coach = "Mourinho"
    assert_equal("Mourinho", @sports_team.coach())
  end

  def test_add_new_player()
    assert_equal(@players_array, @sports_team.add_new_player("Ronaldo"))
  end

  def test_check_for_player()
    assert_equal(true, @sports_team.check_for_player("Mane"))
  end

  def test_get_points()
    assert_equal(0, @sports_team.points())
  end

  def test_update_points__win()
    @sports_team.update_points("win")
    assert_equal(3, @sports_team.points())
  end

  def test_update_points__lose()
    @sports_team.update_points("lose")
    assert_equal(0, @sports_team.points())
  end

end
