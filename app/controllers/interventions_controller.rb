class InterventionsController < ApplicationController


  def new
    #@user_options = Customer.all.map{ |u| [ u.company_name, u.user_id ] }
    @customer = Customer.new
    #@customer.buildings.build
    @building = Building.new  
    @battery  = Battery.new
    @column   = Column.new
    @elevator = Elevator.new
    @employee = Employee.new    
  end


  def create
    # your code/ logic goes here
    return render json: { random_param_name: "Intervention created successfully!"}
  end
end


# private
# def customer_params
#   params.require(:customer).permit(
#     :user_id,
#     :company_name,
#     :buildings_attributes => [:id]
#     #building_attributes: [:customer_id, :address_id, :id]
#   )
# end
