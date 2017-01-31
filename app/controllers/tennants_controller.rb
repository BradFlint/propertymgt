class TennantsController < ApplicationController
  def index
  	@tennants = Tennant.all
  end

  def new
  	@tennant = Tennant.new
  	@property_id = params[:tennant][:property_id]
  end

  def create
  	@tennant = Tennant.new(tennant_params)
      if @tennant.save
        session[:tennant_id] = @tennant.id 
        redirect_to root_path
      else
        render 'new'
    end
  end

  def edit
    @tennant = Tennant.find(params[:id])
  end

  def update
    @tennant = Tennant.find(params[:id]).update_attributes(tennant_params)
    redirect_to tennant_path
  end

  def destroy
  	Tennant.find(params[:id]).destroy
 	  redirect_to tennants_path
  end

  def maintanence
    @tennant = Tennant.find(session[:tennant_id])
  end
  # pony gem used for a tennant to send an email to the landlord to request maintanence
  def maintanence_request
    @tennant = Tennant.find(session[:tennant_id])
  	Pony.mail(from: @tennant.email, to: "bradwflint@gmail.com", subject: "Maintanence request", body: "#{@tennant.first_name} says:\n#{params[:message]}" )
    redirect_to tennants_maintanence_path
  end

  def pay
  	@tennant = Tennant.find(params[:id])
  end

  def show
    @tennant = Tennant.find(session[:tennant_id])
  end

  private
  def tennant_params
    params.require(:tennant).permit(:first_name, :last_name, :email, :password, :property_id )
  end
end
