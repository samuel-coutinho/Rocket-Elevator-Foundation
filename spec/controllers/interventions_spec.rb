require "rails_helper"

RSpec.describe InterventionsController, :type => :controller do    
  render_views
  user1 = User.new

  describe "GET new" do
    it "has a interventions related heading" do
        sign_in user1
        get :new
        expect(response.status).to eq(200)
    end
  end
end

RSpec.describe InterventionsController, :type => :controller do
  describe "index" do
    it "renders the index template" do
      get :new
      expect(response).to render_template("new")
      expect(response.body).to eq ""
    end
    it "renders the interventions/index template" do
      get :new
      expect(response).to render_template("interventions/new")
      expect(response.body).to eq ""
    end
  end
end