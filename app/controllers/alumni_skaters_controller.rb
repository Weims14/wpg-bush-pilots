class AlumniSkatersController < InheritedResources::Base



  private

    def alumni_skater_params
      params.require(:alumni_skater).permit(:number, :name, :position, :gp, :goals, :assists, :points, :pim, :seasons)
    end

end

