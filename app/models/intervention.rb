class Intervention < ApplicationRecord    
    belongs_to :customer
    belongs_to :employee
    belongs_to :battery
    belongs_to :column
    belongs_to :elevator
    belongs_to :building

    validates :battery_id, :column_id, :elevator_id, :employee_id, allow_blank: true
end