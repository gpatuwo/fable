json.extract! comment, :body, :recipe_id, :user_id, :created_at, :id

json.commenter comment.user.username
