require "rails_helper"

RSpec.feature "Interventions management", :type => :feature do
    describe "User is not logged in" do
        it "doesn't show the Intervention session" do
            visit('/')
            #expect(page).to have_link('PORTFOLIO')
            expect(page).not_to have_link('Interventions')
        end
    end

    describe "User is logged in" do
        it "shows the Intervention session" do
            user = User.create!(:email => 'test@example.com', :password => 'password')
            login_as(user, :scope => :user)
            visit('/')
            expect(page).to have_link('Interventions')
        end            
    end

    describe "Check the form filling" do
        
    end
end