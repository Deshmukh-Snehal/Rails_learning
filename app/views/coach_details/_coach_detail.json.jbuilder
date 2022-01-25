json.extract! coach_detail, :id, :name, :sport, :country, :email, :age, :sport_id, :created_at, :updated_at
json.url coach_detail_url(coach_detail, format: :json)
