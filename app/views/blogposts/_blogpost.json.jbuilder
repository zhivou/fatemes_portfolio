json.extract! blogpost, :id, :title, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)
