class TeamRecordsController < InheritedResources::Base



  private

    def team_record_params
      params.require(:team_record).permit(:season, :season_record)
    end

end

