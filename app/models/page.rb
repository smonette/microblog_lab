class Page < ActiveRecord::Base
	belongs_to :user

  validates :name,
    :presence => true,
    :format => {:with => /About|Contact/i}

  validates :content,
    :presence => true,
    :length => {:minimum => 5, :maximum => 250}

end