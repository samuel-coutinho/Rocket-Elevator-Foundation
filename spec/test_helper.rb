def create_data
    user = User.new(
          first_name: "first_name",
          last_name: "last_name",
          email: "email@email.com",
          password: "password",
          created_at: 2020-10-19,
          title: "CEO",                
          is_employee: true,
          is_user: false
        )      
    employee = Employee.new(
        user_id: user.id,
        first_name: "first_name",
        last_name: "last_name",
        function: "function",
        phone: "phone",
        email: "email",       
        )      
    customer = Customer.new(
        user_id: user.id,                
        )                       
    building = Building.new(
        customer_id: customer.id,      
        )                    
    battery = Battery.new(
        building_id: building.id,     
        )     
    column = Column.new(
        battery_id: battery.id,      
        )    
    elevator = Elevator.new(
        column_id: column.id,      
        )
end

def create_data2
    User.create!(
          first_name: "first_name",
          last_name: "last_name",
          email: "email@email.com",
          password: "password",
          created_at: 2020-10-19,
          title: "CEO",                
          is_employee: true,
          is_user: false
        )
      user = User.last 
      Employee.create!(
        user_id: user.id,      
      )
      employee = Employee.last
      Customer.create!(
        user_id: user.id,      
      )
      customer = Customer.last                    
      Building.create!(
        customer_id: customer.id,      
      )
      building = Building.last                    
      Battery.create!(
        building_id: building.id,     
      )
      battery = Battery.last
      Column.create!(
        battery_id: battery.id,      
      )
      column = Column.last
      Elevator.create!(
        column_id: column.id,      
      ) 
      elevator = Elevator.last      
      intervention = Intervention.create!(
        customer_id: customer.id,
        employee_id: employee.id,
        battery_id: battery.id,                        
        column_id: column.id,
        elevator_id: elevator.id,
        building_id: building.id,
        author: employee.id,     
        result: nil,
        report: "text",
        status: nil,
      )
end