json.array!(@skills) do |skill|
  json.extract! skill, :id, :name, :experience, :level, :description
  json.url skill_url(skill, format: :json)
end
