class SkatersController < InheritedResources::Base



  private

    def skater_params
      params.require(:skater).permit(:number, :name, :goals, :assists, :points, :pim, :pos, :gp)
    end

end

