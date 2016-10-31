class StaticPagesController < InheritedResources::Base

  def roster
    @skaters = Skater.all
    @goalies = Goaltender.all
    @alumnis = AlumniSkater.all
  end

  def schedule
    @upcoming_games = UpcomingGame.all
    @schedules = Schedule.all
  end

end
