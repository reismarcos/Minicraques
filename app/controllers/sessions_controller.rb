class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by(login: params[:session][:login])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to '/painel-admin'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to '/login'
    end
  end
  
  
end
