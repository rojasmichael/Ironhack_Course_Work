class Project < ActiveRecord::Base

	has_many :entries

	validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format:{with: /(\w\s)+/}

	def self.clean_odd	
		where("created_at <= ?", d-1.week.ago).destory_all
	end

	def self.last_created_projects(arg)
		@projects = Project.limit(10)
	
	end

	def total_hours_in_month(month, year)
		sum = 0
		minutes = 0

		month = Date.new(year, month)


		entires.where(date: month.beginning_of_month..month.end_of_month).each do |entry|
			sum += entry.hours
			mintues += entry.minutes
		end
		hours_mintues = mintues / 60

		sum + hours_mintues
	end

end
