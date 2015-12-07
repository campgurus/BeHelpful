class Status < ActiveRecord::Base
	validates :name, uniqueness: { message: "This status already exists" }
	validates :name, presence: { message: "Status must have a name" }
end
