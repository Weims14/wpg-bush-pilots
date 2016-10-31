ActiveAdmin.register Goaltender do
  permit_params :name, :number, :gp, :wins, :loses, :otl, :winpercent, :ga, :gaa, :shutouts
end
