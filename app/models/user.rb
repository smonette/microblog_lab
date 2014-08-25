class User < ActiveRecord::Base
	has_secure_password

  has_many :pages, dependent: :destroy
	has_many :posts, dependent: :destroy

  validates :email,
    :confirmation => true,
    :presence => true,
    :uniqueness => true,
    :format => {:with => /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\z/}

  validates :password_digest,
    :presence => true,
    :length => { minimum: 6 }

  validates :first_name,
    :presence => true

  validates :last_name,
    :presence => true

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end

end