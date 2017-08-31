class AppHomeController < ApplicationController
  before_action :require_login

  def index
  	
	
	@BalanceDoivent = App_Home.BalanceDoivent(current_user)
    @BalanceTotal = (App_Home.BalanceTotal(current_user)) - @BalanceDoivent
	@BalanceGlobal =  @BalanceTotal - @BalanceDoivent

	
  
  end
end
