require_relative('../lib/Lexiconomitron.rb')

describe Lexiconomitron do 
	before :each do 
		 @lexi = Lexiconomitron.new
		end 
	# before :each do 
	# 	@lexi.eat_t
	# end

	 
  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end
   #  it "does not remove a t when there is no t" do
   #  	expect(@lexi.eat_t("Hey You!")).to eq("Hey You!")
  	# end
	end 
end