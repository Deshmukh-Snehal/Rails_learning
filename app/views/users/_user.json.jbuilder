json.extract! user, :id, :username, :password, :confirm_password, :created_at, :updated_at
json.url user_url(user, format: :json)
