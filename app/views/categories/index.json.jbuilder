json.array!(@categories) do |category|
  json.extract! category, :id, :name, :url, :top_article_id
  json.url category_url(category, format: :json)
end
