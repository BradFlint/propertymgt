class SessionsController < ApplicationController
  def index

  end

  def new
  	
  end

  def create
  	puts "These are my params: #{params.inspect}"
  	@tennant = Tennant.where(email: params[:email], password: params[:password]).first
  	puts "did we get a user"
  	if @tennant
  		session[:tennant_id] = @tennant.id
  		redirect_to @tennant
  	else 
  		render "new"
  	end
  end

  def destroy
  	session[:tennant_id] = nil
  	redirect_to root_path 
  end
end
