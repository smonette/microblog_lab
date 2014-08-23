require 'rails_helper'

RSpec.describe Entry, :type => :model do

  it "should test that entry is saved" do

   bob = User.create(:email => "bob@bob.com", :first_name => "Bobby", :last_name =>"Man", :image_url =>"http://rawclawblog.com/wp-content/uploads/2014/07/loblaw1000.jpg")
   bobpost = Post.create(:title => "posty", :body => "this is a post", :user_id => bob.id)
   bobtag = Tag.create(:name => "BobTag")

   bobpost.tags << bobtag

   expect(bobpost.tags).not_to eq(nil)

  end

end