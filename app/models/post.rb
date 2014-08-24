class Post < ActiveRecord::Base
	belongs_to :user

	#polymorphic comment relationship
	has_many :comments, as: :commentable, dependent: :destroy

	#tag relationship
	has_many :entries, dependent: :destroy
	has_many :tags, :through => :entries

  validates :title,
    :presence => true,
    :length => {:minimum => 5, :maximum => 50}

  validates :body,
    :presence => true,
    :length => {:minimum => 5, :maximum => 250}
end