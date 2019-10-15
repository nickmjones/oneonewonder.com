json.extract! goal, :id, :goal_type, :goal_title, :goal_description, :goal_complete, :user_id, :created_at, :updated_at
json.url goal_url(goal, format: :json)
