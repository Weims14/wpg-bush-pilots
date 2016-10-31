class GoaltendersController < InheritedResources::Base



  private

    def goaltender_params
      params.require(:goaltender).permit(:name, :number, :gp, :wins, :loses, :otl, :winpercent, :ga, :gaa, :shutouts)
    end

end

