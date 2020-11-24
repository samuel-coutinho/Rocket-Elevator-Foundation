class InterventionsController < ApplicationController

  

  def new
    @employee = Employee.all

    @customers = Customer.all 
    @buildings = Building.all
    @employee = Employee.all  
    @batteries  = Battery.all
    @columns   = Column.all
    @elevators = Elevator.all
    @employee = Employee.all  
    
  end

  def show   
  end

  def create   

  end

  def update_buildings
    @customer = Customer.find(params[:customer_id])    
    @buildings = @customer.buildings
    respond_to do |format|
      format.json {render :json => {building: @buildings}}
    end
  end

  def update_batteries
    @buildings = Building.find(params[:building_id])    
    @batteries =  @buildings.batteries
    respond_to do |format|
      format.json {render :json => {battery: @batteries}}
    end
  end

  def update_columns
    @batteries = Battery.find(params[:battery_id])    
    @columns = @batteries.columns
    respond_to do |format|
      format.json {render :json => {column: @columns}}
    end
  end

  def update_elevators
    @columns = Column.find(params[:column_id])    
    @elevators = @columns.elevators
    respond_to do |format|
      format.json {render :json => {elevator: @elevators}}
    end
  end

  # def update_element
  #   @parent_element = parent_element.find(params[:parent_element_id])    
  #   @elements = @parent_element.elements
  #   respond_to do |format|
  #     format.json {render :json => {element: @elements}}
  #   end 
  # end  
end


