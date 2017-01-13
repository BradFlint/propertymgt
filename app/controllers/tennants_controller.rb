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
  	Pony.mail(from: params[:email], to: "bradwflint@gmail.com", subject: "Maintanence request", body: "maintanence test" )
  end


  def pay
  	@tennant = Tennant.find(params[:id])
  end

  private
  def tennant_params
    params.require(:tennant).permit(:first_name, :last_name, :email, :password, :property_id )
  end
end
