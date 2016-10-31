class SchedulesController < InheritedResources::Base
  def index
    @upcoming_games = UpcomingGame.all
    @schedules = Schedule.all
    @skaters = Skater.all
    @goalies = Goaltender.all
    end
  private
    def schedule_params
      params.require(:schedule).permit(:team1, :score, :team2, :date, :time, :location)
    end





end
