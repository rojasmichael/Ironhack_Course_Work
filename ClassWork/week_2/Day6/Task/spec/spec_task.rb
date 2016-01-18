require_relative('../lib/Task.rb')

describe Task do
	before :each do
	 @task = Task.new("wash my dog")
	end 
	
	describe "#make_incomplete!" do
   		 it "makes a task incomplete" do
     	 expect(@task.make_incomplete!).to eq(false)
    	end
	end 

	describe "#update_content!" do
		it "checks to see if content is the same" do
		expect(@task.update_content!("wash my cat")).to eq("wash my cat")
		end 
	end 
end 



