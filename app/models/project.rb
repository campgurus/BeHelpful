class Project < ActiveRecord::Base
	acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :skills, :interests
	validates_presence_of :name
	validates_presence_of :description
end
