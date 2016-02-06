json.array!(@events) do |event|
  json.extract! event, :id, :place, :time, :date, :sport
  json.url event_url(event, format: :json)
end
