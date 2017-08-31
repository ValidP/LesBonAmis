class FriendsController < ApplicationController
  before_action :require_login


	def show
		@user = User.find(params[:id])
				@current = current_user.id

				@b = User.find(@current)

		

		
		
		@Balance_SearchUser = Friend.Balance_SearchUser(@user)
		
		
		
		@Balance_CurrentUser = Friend.Balance_SearchUser(@b)
		
		if (@Balance_SearchUser != 0)
			@Total = @Balance_CurrentUser - @Balance_SearchUser
		else
			@Total = 0
		end	
	
	end






end
