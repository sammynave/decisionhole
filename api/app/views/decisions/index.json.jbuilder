json.array!(@decisions) do |decision|
  json.extract! decision, :id, :title
  json.url decision_url(decision, format: :json)
end
