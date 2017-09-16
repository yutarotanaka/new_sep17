class TodosController < ApplicationController
    
    def todo_create
        @user = User.find_by(id: session[:user_id])
        Todo.create(content: params[:content], user_id: @user.id)
        redirect_to("/users/#{@user.id}")
    end
    
    def todo_create_universal
        @user = User.find_by(id: session[:user_id])
        Todo.create(content: params[:content], universal: true)
        redirect_to("/users/#{@user.id}")
    end
    
    def todo_detail
        @todo = Todo.find_by(id: params[:id])
        @id = params[:id]
    end
    
end
