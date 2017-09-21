class Todo < ActiveRecord::Base
    Todo.order("deadline asc")
end
