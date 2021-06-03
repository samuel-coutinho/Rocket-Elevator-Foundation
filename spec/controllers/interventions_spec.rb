require "rails_helper"

RSpec.describe InterventionsController, :type => :controller do    
  render_views  

  describe "GET new" do
    it "renders the interventions/index template" do      
      get :new
      expect(response.status).to eq(200)
      expect(response).to render_template("new")
    end    
  end

  describe "responds to" do
    it "responds to html by default" do
      
      post :create, :params => { :intervention_params => {customer_id: customer.id,
      employee_id: employee.id,
      battery_id: battery.id,                        
      column_id: column.id,
      elevator_id: elevator.id,
      building_id: building.id,
      author: employee.id,     
      result: nil,
      report: "text",
      status: nil,}}
      expect(response.content_type).to eq "text/html"
    end

    # it "responds to custom formats when provided in the params" do
    #   post :create, :params => { :widget => { :name => "Any Name" }, :format => :json }
    #   expect(response.content_type).to eq "application/json"
    # end
  end
end