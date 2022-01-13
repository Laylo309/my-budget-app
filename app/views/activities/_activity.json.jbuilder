json.extract! activity, :id, :author_id, :name, :amount, :created_at, :updated_at
json.url activity_url(activity, format: :json)
