class Project < ActiveRecord::Base

	def self.clean_odd	
		where("created_at <= ?", d-1.week.ago).destory_all
	end

	def self.last_created_projects(arg)
		@projects = Project.limit(10)
	
	end

end
