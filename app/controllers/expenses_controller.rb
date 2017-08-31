class ExpensesController < ApplicationController

	def index
		@expenses = Expense.all
		
	end
	  
	def edit
		

	
		@expense = Expense.find(params[:id])
		if (@expense.payeur == current_user )
		@user = User.all
		else
			redirect_to expenses_path

		end
	end

	def new
		@expense = Expense.new
		@user = User.all
	end


	def destroy
		@expense = Expense.find(params[:id])
		@expense.destroy
	 
		redirect_to expenses_path
	end
	 
	def create
		@expense = Expense.new(expenses_params)
		@user = User.where(:id => params[:user])
		@expense.users << @user 
		@expense.payeur = User.find(params[:payeur])
		
		if @expense.save
			n = 0
			
			until n == @expense.users.count
				if (@expense.users[n] != @expense.payeur)
					@NewAmount = @expense.amount / @expense.users.count
					UserMailer.welcome_email(@expense.users[n], @expense.title, @NewAmount).deliver_now
				end
				n += 1

			end
			
			
			redirect_to @expense
		else
		render 'new'
	  end
	end

	def show
	  @expense = Expense.find(params[:id])
	end
	 
	def update
	  @expense = Expense.find(params[:id])
	 
	  if @expense.update(expense_params)
		redirect_to @expenses
	  else
		render 'edit'
	  end
	end
 
	private
	  def expenses_params
		params.require(:expense).permit(:title, :amount, :payeur)
		
	  end







end
