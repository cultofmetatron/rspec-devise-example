json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :created_at, :content, :due_date, :done
  json.url task_url(task, format: :json)
end
