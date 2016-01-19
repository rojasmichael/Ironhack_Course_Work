require_relative('../lib/TodoList.rb')
require_relative('../lib/Task.rb')
RSpec.describe TodoList do
	before :each do
	 @list = TodoList.new
	 @task = Task.new("buy dog")
	 @task2 = Task.new("send serveral cease and desist spam letter")
	 @task3 = Task.new("put together desk")

	end 


	describe "#add_task" do
		it "adds task to our current task list" do
		expect(@list.tasks.length).to eq(0)
		@list.add_task(@task)
		expect(@list.tasks.length).to eq(1)
		end 
	end 

	describe "#delete_task" do
		it "deletes a task with the given id" do

			@list.add_task(@task)
			@list.add_task(@task2)
			@list.add_task(@task3)

			expect(@list.tasks.length).to eq(3)

			@list.delete_task(@task3.id)

			expect(@list.tasks.length).to eq(2)

			@list.delete_task(@task2.id)


			expect(@list.tasks.length).to eq(1)
		

		end 
	end 

end 