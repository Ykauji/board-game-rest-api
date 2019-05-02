#testing jbuilder stuff

json.data do 
	json.user do
		json.call(
		@user,
		:username,
		:kill_count
		)
	end
end