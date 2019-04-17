class TeamsController < ApplicationController
  before_action :set_params, only: %i(show edit update destroy)

  def index
    @teams = current_user.teams.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_params
    team = Team.find(params[:id])
  end

  def team_params
    params.require(:teams).permit(:name, :description, :body, :user, :level)
  end
end
