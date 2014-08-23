class Post < ActiveRecord::Base
	belongs_to :user

	#polymorphic comment relationship
	has_many :comments, as: :commentable, dependent: :destroy

	#tag relationship
	has_many :entries, dependent: :destroy
	has_many :tags, :through => :entries

  validates :title,
    :presence => true,
    :length => {:maximum => 50}

  validates :body,
    :presence => true,
    :length => {:maximum => 250}
end