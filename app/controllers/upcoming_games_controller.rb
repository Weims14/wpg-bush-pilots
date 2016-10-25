class UpcomingGamesController < InheritedResources::Base



  private

    def upcoming_game_params
      params.require(:upcoming_game).permit(:team1, :team2, :date, :time, :location)
    end

    

end
