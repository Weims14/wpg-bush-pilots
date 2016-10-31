json.extract! goaltender, :id, :name, :number, :gp, :wins, :loses, :otl, :winpercent, :ga, :gaa, :shutouts, :created_at, :updated_at
json.url goaltender_url(goaltender, format: :json)