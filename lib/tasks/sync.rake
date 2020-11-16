require './lib/dwh/sync.rb'
namespace :dwh do
  task print: :environment do
    #mysqldb = ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations['development'])
    #puts mysqldb.connection.current_database
    conn = PG::Connection.open(host: 'codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com', dbname: 'warehouseJorge', user: 'codeboxx', password: 'Codeboxx1!')
    puts conn
  end

  task :sync  => :environment do
    # Starts off by clearing the current fact DB
    Second::Base.connection.execute('TRUNCATE dim_customers RESTART IDENTITY')
    Second::Base.connection.execute('TRUNCATE fact_quotes RESTART IDENTITY')
    Second::Base.connection.execute('TRUNCATE fact_contacts RESTART IDENTITY')
    Second::Base.connection.execute('TRUNCATE fact_elevators RESTART IDENTITY')
    Second::Base.connection.execute('TRUNCATE fact_interventions RESTART IDENTITY')

    # NOTE: If you add another function to the task, wrap it with begin and rescue to catch the exception so that Rake can still run without stopping
    # like so: 

    # begin
    # Foo::Bar.Baz
    # rescue => exception
    #   puts "Warning: " + exception.to_s + " - Task continuing..."
    # end

    begin
    Dwh::Sync.sync_fact_quotes
    rescue => exception
      puts "Warning: " + exception.to_s + " - Task continuing..."
    end

    begin
    Dwh::Sync.sync_dim_customers
    rescue => exception
      puts "Warning: " + exception.to_s + " - Task continuing..."
    end

    begin
    Dwh::Sync.sync_fact_contacts
    rescue => exception
      puts "Warning: " + exception.to_s + " - Task continuing..."
    end
    
    begin
    Dwh::Sync.sync_fact_elevators
    rescue => exception
      puts "Warning: " + exception.to_s + " - Task continuing..."
    end

    begin
    Dwh::Sync.sync_fact_interventions
    rescue => exception
      puts "Warning: " + exception.to_s + " - Task continuing..."
    end

  end
end