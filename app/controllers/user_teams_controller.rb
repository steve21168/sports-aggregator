class UserTeamsController < ApplicationController

  def edit
    @user = current_user
    @nba_teams = Team.nba_teams
    @nhl_teams = Team.nhl_teams
    @mlb_teams = Team.mlb_teams
    @nfl_teams = Team.nfl_teams
  end

  def update
    current_user.update(user_teams_params)
    redirect_to home_path
  end


  private

  def user_teams_params
    params.require(:user).permit(team_ids: [])
  end
end
