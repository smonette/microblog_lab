require 'rails_helper'

RSpec.describe Post, :type => :model do

  it "should test that post is saved" do
   bob = User.create(:email => "bob@bob.com", :first_name => "Bobby", :last_name =>"Man", :image_url =>"http://rawclawblog.com/wp-content/uploads/2014/07/loblaw1000.jpg")

   bobspost = Post.create(:title => "posty", :body => "this is a post", :user_id => bob.id)

   expect(bob.posts).not_to eq(nil)
  end

end