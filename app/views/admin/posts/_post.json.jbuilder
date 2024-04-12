json.extract! post, :id, :title, :media, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
