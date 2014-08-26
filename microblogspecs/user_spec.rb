require 'rails_helper'

RSpec.describe User, :type => :model do
  require 'rails_helper'

  it "should test that user is saved" do
  	User.create(:email => "tim@bob.com", :first_name => "Timothy", :last_name => "Licata", :image_url => "http://rawclawblog.com/wp-content/uploads/2014/07/loblaw1000.jpg")
  	tim = User.find_by_first_name("Timothy")
  	expect(tim).not_to eq(nil)
  end


end
