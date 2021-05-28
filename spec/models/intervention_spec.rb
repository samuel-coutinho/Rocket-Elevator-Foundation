require 'spec_helper'
require 'rails_helper'

RSpec.describe Intervention, type: :model do    
  context "test if the the model" do  
    intervention = Intervention.new(customer_id: 1,
                                    employee_id: 1,
                                    battery_id: 1,                        
                                    column_id: 1,
                                    elevator_id: 1,
                                    building_id: 1,
                                    author: 1,
                                    start_date_and_time: nil,
                                    end_date_and_time: nil,
                                    result: nil,
                                    report: 3,
                                    status: nil,
                                    )  
                                      
    it "customer_id is numeric" do
      expect(intervention.customer_id).to be_a(Numeric)
    end

    it "employee_id is numeric" do
      expect(intervention.employee_id).to be_a_kind_of(Numeric)
    end

    it "battery_id is numeric" do
      expect(intervention.battery_id).to be_a_kind_of(Numeric)
    end
   
    it "column_id is numeric" do
      expect(intervention.column_id).to be_a_kind_of(Numeric)
    end

    it "elevator_id is numeric" do
      expect(intervention.elevator_id).to be_a_kind_of(Numeric)
    end

    it "building_id is numeric" do
      expect(intervention.building_id).to be_a_kind_of(Numeric)
    end

    it "author is numeric" do
      expect(intervention.author).to be_a_kind_of(Numeric)
    end


    it "start_date_and_time is null" do
      expect(intervention.start_date_and_time).to eq(nil)
    end
   
    it "end_date_and_time is nul" do
      expect(intervention.end_date_and_time).to eq(nil)
    end

    it "result is equal 'Incomplete' " do
      expect(intervention.result).to eq("Incomplete")
    end

    it "report is a kind of string" do
      expect(intervention.report).to be_a_kind_of(String)
    end

    it "status is equal 'Pending' " do
      expect(intervention.status).to eq("Pending")
    end
  end
end
        




# lead = Lead.new(
    #                   full_name: "string",
    #                   email: "string",
    #                   phone:"string",
    #                   business_name:"string",
    #                   project_name:"string",
    #                   department:"string",
    #                   project_description:"string",
    #                   message:"string",
    #                   attachment:"string",
    #                   user_id: 2,
    #                 )  

    # it "lead" do      
    #   expect(lead.user_id).to be_a_kind_of(Integer)
    # end


# subject {
  #     described_class.new(customer_id: 1,
  #                         employee_id: 1,
  #                         battery_id: 1,                        
  #                         column_id: 1,
  #                         elevator_id: 1,
  #                         building_id: 1,
  #                         author: 1,
  #                         start_date_and_time: nil,
  #                         end_date_and_time: nil,
  #                         result: "string",
  #                         report: "text",
  #                         status: "string",
  #                         )
  #   }     

                                  #     customer = Customer.create(
  #                             user_id: 1,
  #                             company_name: "string",
  #                             company_contact_full_name: "string",
  #                             company_contact_phone: "string",
  #                             company_contact_email: "string",
  #                             company_description: "string",
  #                             technical_authority_full_name: "string",
  #                             technical_authority_phone_number: "string",
  #                             technical_manager_email_service:  "string",
  #                             created_at: 2020-10-19,
  #                             updated_at: 2020-10-19,
  #                             address_id: 1,
  #                             )
  #     employee = Employee.new
  #     building = Building.new
  #     battery = Battery.create(building_id: 1,                            
  #                           battery_type: nil,
  #                           battery_status: "String",
  #                           employee_id: 1,
  #                           date_of_commissioning: 2020-10-19,
  #                           date_of_last_inspection: 2020-10-19,
  #                           certificate_of_operations: "String",
  #                           information: "String",
  #                           notes: "String",
  #                           )

  #     column = Column.create(battery_id: 1,
  #                         column_type: "String",
  #                         number_of_floors_served: 1,
  #                         column_status: "String",
  #                         information: "String",
  #                         notes: "String",
  #                         )                       
    

  #     elevator = Elevator.new
                                  # before(:example) do
                                  #   @customer = Customer.create!
                                  #   @employee = Employee.create!
                                  #   @building = Building.create!
                                  #   @intervention = Intervention.create!
                                  # end