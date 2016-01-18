require_relative('..lib/Task.rb')

describe Task do
	before :each do
	 @task = Task.new
	end 
	
	describe "#make_incomplete!" do
   		 it "makes a task incomplete" do
     	 expect(@task.make_incomplete!).to eq(false)
    	end
	end 

end 



