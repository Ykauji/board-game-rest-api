class User < ApplicationRecord
	validates_uniqueness_of :userid, :message => "username already exists!"
end
