json.array!(@posts) do |post|
  json.extract! post, :id, :content, :username, :avatar, :favorite
  json.url post_url(post, format: :json)
end
