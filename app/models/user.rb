class User < ActiveRecord::Base
    has_many :keijibans
    has_many :microposts, dependent: :destroy
    def todos
        return Todo.where(user_id: self.id)
    end

    def todos_universal
        return Todo.where(universal: true)
    end
end
