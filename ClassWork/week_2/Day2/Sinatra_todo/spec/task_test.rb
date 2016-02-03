require_relative("../lib/task.rb")

describe Task do
	before :each do @task = Task.new("content")
	end

	describe "complete!" do
	it "gives the boolean value of a completed task" do 
		expect(@task.complete!).to eq(true)
		end
	end

	describe "completed" do
	it "gives the boolean value of a task" do 
		expect(@task.completed).to eq(false)
		end
	end

	describe "make_incomplete" do
	it "makes a task completed value false" do 
		expect(@task.make_incomplete).to eq(false)
		end
	end
end