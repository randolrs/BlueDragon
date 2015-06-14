json.array!(@columnists) do |columnist|
  json.extract! columnist, :id, :name
  json.url columnist_url(columnist, format: :json)
end
