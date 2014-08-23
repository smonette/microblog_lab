require 'rails_helper'

RSpec.describe Page, :type => :model do

  it "should test that page is saved" do
   bob = User.create(:email => "bob@bob.com", :first_name => "Bob", :last_name => "Licata", :image_url => "http://rawclawblog.com/wp-content/uploads/2014/07/loblaw1000.jpg")
   bobspage = Page.create(:name => "BobBlog", :content => "BobBlog content", :user_id => bob.id)
   expect(bob.pages).not_to eq(nil)
  end

end