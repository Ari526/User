json.extract! user_app, :id, :name, :email, :created_at, :updated_at
json.url user_app_url(user_app, format: :json)
