class Tag < ActiveRecord::Base
	has_many :entries, dependent: :destroy
	has_many :posts, :through => :entries

  validates :name,
    :presence => true,
    :uniqueness => true,
    :length => {:minimum => 2, :maximum => 20}
end