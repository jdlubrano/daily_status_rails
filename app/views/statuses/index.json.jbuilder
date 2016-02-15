json.array!(@statuses) do |status|
  json.extract! status, :id, :content, :show_date
  json.url status_url(status, format: :json)
end
