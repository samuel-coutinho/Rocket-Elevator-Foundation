require 'test_helper'

# class AddressesControllerControllerTest < ActionDispatch::IntegrationTest
#   # test "the truth" do
#   #   assert true
#   # end
# end


RSpec.describe 'Post' do           #
  context 'before publication' do  # (almost) plain English
    it 'cannot have comments' do   #
      expect { Post.create.comments.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end
end