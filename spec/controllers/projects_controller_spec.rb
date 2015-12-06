require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  let(:projects) { FactoryGirl.create_list(:project, 4) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    context 'when requested project exists' do
      let(:project) { FactoryGirl.create(:project) }
      before(:each) { get :show, id: project.id }

      it 'success' do
        expect(response).to be_success
      end

      it 'assigns it to @project' do
        expect(assigns(:project)).to eq project
      end
    end
  end

end
