require 'rails_helper'


feature "Editor edits a project" do
	let(:project) { FactoryGirl.create(:project) }
	scenario "Editor arrives at the project edit page and sees the subject's name" do
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
		visit "/projects/#{project.id}/edit"
		expect(page).to have_content('Editing Project: ' + project.name)
	end
end