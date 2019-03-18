class User < ApplicationRecord
	validates_uniqueness_of :username, :message => "username already exists!"
end
