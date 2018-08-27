class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to(controller: 'application', action: 'new') if params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
