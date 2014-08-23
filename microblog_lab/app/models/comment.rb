class Comment < ActiveRecord::Base
	#polymorphic, belongs to either a post or comment (polymorphic associations)
	belongs_to :commentable, polymorphic: true

	#for comments within comments, left naming vague to make sure no issues with pluralization.
	#this is both self-joining and polymorphic
	has_many :children, class_name: "Comment", foreign_key: "commentable_id" , as: :commentable

	belongs_to :parent, class_name: "Comment", as: :commentable
end
