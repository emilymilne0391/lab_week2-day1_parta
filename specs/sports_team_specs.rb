require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    @players = ["Emily", "Bekah", "Tom"]
    @sports_team = SportsTeam.new("Hearts", @players, "Levein")
    assert_equal("Hearts", @sports_team.team_name)
  end

  def test_can_get_players
    @players = ["Emily", "Bekah", "Tom"]
    @sports_team = SportsTeam.new("Hearts", @players, "Levein")
    assert_equal(["Emily", "Bekah", "Tom"], @sports_team.players)
  end

  def test_can_get_coach
    @players = ["Emily", "Bekah", "Tom"]
    @sports_team = SportsTeam.new("Hearts", @players, "Levein")
    assert_equal("Levein", @sports_team.coach)
  end

  def test_coach_name
    @players = ["Emily", "Bekah", "Tom"]
    @sports_team = SportsTeam.new("Hearts", @players, "Levein")
    @sports_team.coach_change_name("Bob")
    assert_equal("Bob", @sports_team.coach)
  end

def test_add_player
  @players = ["Emily", "Bekah", "Tom"]
  @sports_team = SportsTeam.new("Hearts", @players, "Levein")
  @sports_team.add_player("TEB")
  assert_equal(4, @sports_team.players.count)
end

def test_find_player_true
  @players = ["Emily", "Bekah", "Tom", "TEB"]
  @sports_team = SportsTeam.new("Hearts", @players, "Levein")
  assert_equal(true, @sports_team.find_player("TEB"))
end

# coulnd't figure this one out
# def test_points
#   @players = ["Emily", "Bekah", "Tom", "TEB"]
#   @sports_team = SportsTeam.new("Hearts", @players, "Levein")
#   @sports_team.results("win")
#   assert_equal(10, @sports_team.results)
# end

end
