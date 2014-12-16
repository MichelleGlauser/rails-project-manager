json.array!(@tasks) do |task|
  json.extract! task, :name, :description, :difficulty_level, :project_id
  json.url project_task_url(task.project, task, format: :json)
end
