require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    assert_equal("The Winners", team1.team_name)
  end

  def test_players
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    assert_equal(["Gary", "Steve", "John"], team1.players)
  end

  def test_captain
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    assert_equal("Captain Cook", team1.captain)
  end

  def test_change_captain
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    team1.captain = "Captain Hook"
    assert_equal("Captain Hook", team1.captain)
  end

  def test_add_player
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    team1.add_player("Pete")
    assert_equal(["Gary", "Steve", "John", "Pete"], team1.players)
  end

  def test_check_for_player
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    assert_equal("Player in team", team1.find_player("Gary"))
  end

  def test_points_updated
    team1 = SportsTeam.new("The Winners", ["Gary", "Steve", "John"], "Captain Cook", 0)
    team1.points_updated("win")
    assert_equal( 1, team1.points )
  end



end
