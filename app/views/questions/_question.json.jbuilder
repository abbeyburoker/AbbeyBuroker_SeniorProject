json.extract! question, :id, :question, :solution, :resource, :created_at, :updated_at
json.url question_url(question, format: :json)
