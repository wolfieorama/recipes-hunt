json.array!(@directions) do |direction|
  json.extract! direction, :id, :step, :recipe_id
  json.url direction_url(direction, format: :json)
end
