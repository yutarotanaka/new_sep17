class Todo < ActiveRecord::Base
    default_scope -> { order(deadline: :asc) }
end
