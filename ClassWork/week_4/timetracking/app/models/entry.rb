class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, numericality: {only_integer: true}, presence: true
	validates :mintues, numericality: {only_integer: true} presence: true
	validates :date, presence: true
	
	validates_associated :project
end
