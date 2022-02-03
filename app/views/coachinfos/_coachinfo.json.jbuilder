json.extract! coachinfo, :id, :name, :sportname, :age, :country, :created_at, :updated_at
json.url coachinfo_url(coachinfo, format: :json)
