class InterventionsController < ApplicationController
  

  def new
    @employees = Employee.all
    @customers = Customer.all 
    @buildings = Building.all     
    @batteries  = Battery.all
    @columns   = Column.all
    @elevators = Elevator.all   

  end

  def show   
  end

  def create
    
    # @intevention.status = "Pending"
    # @intevention.author
    # @intevention.result
    # @intevention.report

    #@intervention = Intervention.new

    @employee = Employee.new
    @customer = Customer.new 
    @building = Building.new    
    @battery  = Battery.new
    @column   = Column.new
    @elevator = Elevator.new     
    
    @intervention = Intervention.new(intervention_params) 
    @employee = Employee.new(employee_params)    
    @customer = Customer.new(customer_params)
    @building = Building.new(building_params)     
    @battery  = Battery.new(battery_params)
    @column   = Column.new(column_params)
    @elevator = Elevator.new(elevator_params)    

    @intervention.employee_id = @employee.id
    @intervention.customer_id = @customer.id
    @intervention.building_id = @building.id 
    @intervention.battery_id = @battery.id
    @intervention.column_id = @column.id
    @intervention.elevator_id = @elevator.id
    #@intervention.report = :report


    @intervention.save
    
    respond_to do |format|
      if @intervention.save
        format.html do
          redirect_to new_path_url, notice: 'Quote created successfully!'
        end
      end
    end
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

private

  def intervention_params
    params.permit(
      :customer_id,
      :employee_id,
      :battery_id,
      :column_id,
      :elevator_id,
      :building_id,
      :author,
      :start_date_and_time,
      :end_date_and_time,
      :result,
      :report,
      :status
    )
  end

  def employee_params
    params.require(:employee).permit(
      :id,
      :first_name,
      :last_name,
      :function,
      :phone,
      :email,
      :user_id    
    )
  end

  def customer_params
    params.require(:customer).permit(
      :id,
      :user_id,
      :company_name,
      :company_contact_full_name,
      :company_contact_phone,
      :company_contact_email,
      :company_description,    
      :technical_authority_full_name,
      :technical_authority_phone_number,
      :technical_manager_email_service,
      :address_id    
    )
  end

  def building_params
    params.require(:building).permit(
      :id,
      :customer_id,
      :admin_contact_id,
      :technical_contact_id,
      :administrator_full_name,
      :administrator_email,
      :administrator_phone_number,    
      :technical_contact_full_name,
      :technical_contact_email,
      :technical_contact_phone,
      :building_detail_id,
      :address_id  
    )
  end

  def battery_params
    params.require(:battery).permit(
      :id,
      :building_id,
      :employee_id,
      :battery_type,
      :battery_status,
      :date_of_commissioning,
      :date_of_last_inspection,    
      :certificate_of_operations,
      :information,
      :notes    
    )
  end

  def column_params
    params.require(:column).permit(
      :id,
      :battery_id,
      :column_type,
      :column_status,
      :number_of_floors_served,
      :information,
      :notes     
    )
  end

  def elevator_params
    params.require(:elevator).permit(
      :id,
      :column_id,
      :serial_number,
      :elevator_model,
      :elevator_type,
      :elevator_status,
      :date_of_commissioning,     
      :date_of_last_inspection,
      :certificate_of_inspection,
      :information,
      :notes
    )
  end


