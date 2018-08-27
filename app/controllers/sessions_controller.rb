class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to '/sessions/new' if session[:name]
    redirect_to(controller: 'application', action: 'hello')
  end

  def destroy
    session.delete :name
    redirect_to(controller: 'sessions', action: new)
  end
end
