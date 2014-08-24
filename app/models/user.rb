class User < ActiveRecord::Base
	has_many :pages, dependent: :destroy
	has_many :posts, dependent: :destroy

  validates :email,
    :confirmation => true,
    :presence => true,
    :uniqueness => true,
    :format => {:with => /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\z/}

  validates :first_name,
    :presence => true

  validates :last_name,
    :presence => true
end