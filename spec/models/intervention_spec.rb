require 'spec_helper'
require 'rails_helper'
require 'test_helper'

RSpec.describe Customer, type: :model do
  context "test if Customer has_many Intervention" do
    it { should have_many(:interventions) }
  end  
end

RSpec.describe Employee, type: :model do
  context "test if Employee has_many Intervention" do
    it { should have_many(:interventions) }
  end  
end

RSpec.describe Battery, type: :model do
  context "test if Battery has_many Intervention" do
    it { should have_many(:interventions) }
  end  
end

RSpec.describe Column, type: :model do
  context "test if Column has_many Intervention" do
    it { should have_many(:interventions) }
  end  
end

RSpec.describe Elevator, type: :model do
  context "test if Elevator has_many Intervention" do
    it { should have_many(:interventions) }
  end  
end

RSpec.describe Building, type: :model do
  context "test if Building has_many Intervention" do
    it { should have_many(:interventions) }
  end  
end

RSpec.describe Intervention, type: :model do
  describe "Intervention Model" do
    context "test the Intervention associations" do
      it { should belong_to(:customer) }
      it { should belong_to(:employee) }
      it { should belong_to(:battery) }
      it { should belong_to(:column) }
      it { should belong_to(:elevator) }
      it { should belong_to(:building) }
    end

    context "test if the the model" do 
      User.destroy_all 
      Employee.destroy_all 
      Customer.destroy_all 
      Building.destroy_all 
      Battery.destroy_all 
      Column.destroy_all 
      Elevator.destroy_all 
      Intervention.destroy_all       
      count0 = Intervention.count
            
      intervention = create_data2
      it "saves in the database " do
        count1 = Intervention.count
        expect(count1).to eq(count0 + 1)  
      end

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
    
      it "end_date_and_time is null" do
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
end



