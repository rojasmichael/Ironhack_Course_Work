require_relative ('lib/Task.rb')
require_relative('lib/TodoList.rb')

require 'sinatra'
require 'sinatra/reloader' if development? 

enable(:sessions)


get "/" do 

todo_list = TodoList.new
task = Task.new("Buy the milk")
task2 = Task.new("Wash the car")
todo_list.add_task(task)
todo_list.add_task(task2)

@array_tasks=todo_list.tasks
# @array_tasks=todo_list.load_tasks
	erb(:task_index)
end

get "/new_task" do
	operator=params[:operator]
	if operator == "new value"

erb(:new_task)
end




