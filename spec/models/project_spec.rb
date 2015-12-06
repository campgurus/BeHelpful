require 'rails_helper'

describe Project do
  it "is invalid without a name" do
    project = build(:project, name: nil)
    expect(project).to be_invalid
  end
  it "is invalid without a description" do
    project = build(:project, description: nil)
    expect(project).to be_invalid
  end
end

describe "#new" do
  it "takes two parameters and returns an Article object" do
	project = build(:project)
      project.should be_an_instance_of Project
  end
end

describe "#name" do
  it "returns the correct name" do
  	project = build(:project)
      expect(project.name).to include "MyString"
  end
end

describe "#description" do
  it "returns the correct description" do
  	project = build(:project)
      expect(project.description).to eq "MyText"
  end
end

describe "#tags" do
	it "returns the correct tags" do
		project = create(:project, :poetry)
		  expect(project.tag_list).to include("poetry")
	end
end  
