json.extract! movie, :id, :name, :synopsis, :director, :created_at, :updated_at
json.url movie_url(movie, format: :json)
