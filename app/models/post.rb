class Post < ActiveRecord::Base
	belongs_to :user

	#polymorphic comment relationship
	has_many :comments, as: :commentable

	#tag relationship
	has_many :entries, dependent: :destroy
	has_many :tags, :through => :entries
end
