json.extract! series, :id, :name, :synopsis, :director, :created_at, :updated_at
json.url series_url(series, format: :json)
