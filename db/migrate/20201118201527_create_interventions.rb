class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.belongs_to :customer
      t.belongs_to :employee
      t.belongs_to :battery
      t.belongs_to :column
      t.belongs_to :elevator
      t.belongs_to :building
      t.integer :author
      t.integer :customer_id
      t.integer :building_id
      t.integer :battery_id
      t.integer :column_id
      t.integer :elevator_id
      t.integer :employee_id
      t.date :start_date_and_time
      t.date :end_date_and_time
      t.string :result
      t.text :report
      t.string :status

      t.timestamps
    end
  end
end
