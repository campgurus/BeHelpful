class Project < ActiveRecord::Base
	acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :skills, :interests
	validates_presence_of :name
	validates_presence_of :description
	validates :name, uniqueness: { message: "There is already a project with this name" }
	has_many :tasks
	accepts_nested_attributes_for :tasks
end
