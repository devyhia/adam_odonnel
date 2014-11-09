json.array!(@admin_events) do |admin_event|
  json.extract! admin_event, :id, :what, :what_more, :image, :when
  json.url admin_event_url(admin_event, format: :json)
end
