class SchedulesController < InheritedResources::Base



  private

    def schedule_params
      params.require(:schedule).permit(:team1, :score1, :score2, :team2, :date, :time, :location)
    end

end
