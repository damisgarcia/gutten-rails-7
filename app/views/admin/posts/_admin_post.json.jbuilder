# frozen_string_literal: true

json.extract! admin_post, :id, :id, :title, :body, :created_at, :updated_at
json.url admin_post_url(admin_post, format: :json)
