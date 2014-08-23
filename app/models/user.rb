class User < ActiveRecord::Base
	has_many :pages, dependent: :destroy
	has_many :posts, dependent: :destroy
end