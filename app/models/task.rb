class Task < ActiveRecord::Base 
	validates_uniqueness_of :title, :scope => :project_id
	belongs_to :project
end
