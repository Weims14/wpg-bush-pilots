class AlumniGoaltendersController < InheritedResources::Base



  private

    def alumni_goaltender_params
      params.require(:alumni_goaltender).permit(:name, :number, :gp, :wins, :loses, :otl, :winpercent, :ga, :gaa, :shutouts, :season)
    end

end

