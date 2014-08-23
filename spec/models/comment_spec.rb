require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "should test that comment is saved" do

   #create comment on post
   bobspost = Post.create(:title => "posty", :body => "this is a post")
   commentOnBobsPost = Comment.create(:content => "posty", :commentable_id => bobspost.id, :commentable_type => "Post")
   expect(bobspost.comments).not_to eq(nil)

   #create comment on previous comment
   Comment.create(:content => "comment on the comment", :commentable_id => commentOnBobsPost.id, :commentable_type => "Comment")
   expect(commentOnBobsPost.children).not_to eq(nil)
  end

end