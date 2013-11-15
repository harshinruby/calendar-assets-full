json.array!(@events) do |event|
  json.extract! event, :title, :description, :start, :end, :allDay
  json.url event_url(event, format: :json)
end
