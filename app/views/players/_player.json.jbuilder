json.extract! player, :id, :name, :states, :city, :email, :age, :created_at, :updated_at
json.url player_url(player, format: :json)
