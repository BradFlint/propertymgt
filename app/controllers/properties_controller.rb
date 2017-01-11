class PropertiesController < ApplicationController
	def index
		@properties = Property.all
	end 

	def new
		@property = Property.new
	end

	def apply
    end

	def show

  	end

	def create
    @property = Property.new(property_params)
    if @property.save
        redirect_to root_path
    else
      render "new"
    end
   end

   def edit
   	@property = Property.find(params[:id])
   end

   def destroy
	    @property = Property.find(params[:id])
    	@property.destroy

	    redirect_to properties_home_path
	end

	def update
	    @property = Property.find(params[:id])

	      if @property.update(property_params)
          redirect_to properties_home_path
        else
	        render 'edit'
	    end
	end

    private
	def property_params
	    params.require(:property).permit(:property_id, :address, :city, :state, :zip, :monthly_rent, :date_available, :bedrooms, :baths, :square_feet, :description, :pet_policy, :security_deposit, :application_fee)
	end
end

