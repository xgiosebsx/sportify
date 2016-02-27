json.array!(@adminpanels) do |adminpanel|
  json.extract! adminpanel, :id
  json.url adminpanel_url(adminpanel, format: :json)
end
