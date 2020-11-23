class InterventionsController < ApplicationController

  # def new
  #   #@user_options = Customer.all.map{ |u| [ u.company_name, u.user_id ] }
  #   @customer = Customer.new
  #   #@customer.buildings.build
  #   @building = Building.new  
  #   @battery  = Battery.new
  #   @column   = Column.new
  #   @elevator = Elevator.new
  #   @employee = Employee.new    
  # end

  def new
    @customers = Customer.all       
    #@customer = Customer.new    
    @buildings = Building.all
    @employee = Employee.new  
  end

  def show
    #@building = Building.find_by("id = ?", params[:customer][:customer_id])
  end

  def update_buildings
    @customer = Customer.find(params[:customer_id])    
    @buildings = @customer.buildings
    respond_to do |format|
      format.json {render :json => {building: @buildings}}
    end
  end

  # def get_buildings
  #   @customer = Customer.find params[:customer_id]
  #   #@buildings = Building.find_all_by_customer_id(params[:customer_id])
  #   @buildings = @customer.buildings
  #   respond_to do |format|
  #     format.js
  #   end
  # end

  # def create
  #   @customer = Customer.find params[:customer_id]
  #   #@buildings = Building.find_all_by_customer_id(params[:customer_id])
  #   @buildings = @customer.buildings
  #   respond_to do |format|
  #     format.js
  #   end
  # end
end


 
#  private
#   def customer_params
#     params.require(:customer).permit(
#       :user_id,
#       :company_name,
#       :buildings_attributes => [:id]
#       #building_attributes: [:customer_id, :address_id, :id]
#     )
#   end

