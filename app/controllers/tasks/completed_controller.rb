class Tasks::CompletedController < ApplicationController
  def index
    @tasks = Task.completed.order(created_at: :desc)
    render 'tasks/index'
  end
end
