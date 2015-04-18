json.array!(@blogs) do |blog|
  json.extract! blog, :id, :index, :title, :content
  json.url blog_url(blog, format: :json)
end
