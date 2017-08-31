class UsersController < ApplicationController



	def index
		@users = User.all
	end
	  
	def edit
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end


	def destroy
		@user = User.find(params[:id])
		@user.destroy
	 
		redirect_to users_path
	end
	 
	def create
		@user = User.new(expenses_params)
	 
		if @user.save
			redirect_to users_path
		else
		render 'new'
	  end
	end

	def show
	  @user = User.find(params[:id])
	end
	 
	def update
	  @user = User.find(params[:id])
	 
	  if @user.update(expenses_params)
		redirect_to users_path
	  else
		render 'edit'
	  end
	end
 
	private
	  def expenses_params
		params.require(:user).permit(:name, :email, :password)
	  end



end
