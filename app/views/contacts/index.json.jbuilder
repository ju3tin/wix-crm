json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :email, :company_name, :job_title, :telephone
  json.url contact_url(contact, format: :json)
end
