class PropertiesController < ApplicationController
	
	before_action :authenticate_landlord!, only: [:all, :liststatus, :new, :create, :edit, :destroy, :update ]

	def index
		@properties = Property.listed
	end 

	def all
		@properties = Property.all
	end

	def liststatus
		@property = Property.find(params[:id]).statusChange
		redirect_to properties_all_path
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
	        redirect_to properties_all_path 
	    else
	      render "new"
	    end
	end

   def apply
   	Pony.mail(from: params[:email], to: "bradwflint@gmail.com", subject: "Email application", body: "application test", :attachments => {"rentalapp.pdf" => File.read(Rails.root.to_s + "/public/rentalapp.pdf")} )
   end

   def edit
   	@property = Property.find(params[:id])
   end

   def destroy
	    Property.find(params[:id]).destroy
	    redirect_to properties_all_path
	end

	def update
	    @property = Property.find(params[:id])
	       if @property.update_attributes(property_params)
              redirect_to properties_path
	       else
		       render 'edit'
		   end
	end

    private
	def property_params
	    params.require(:property).permit(:property_id, :address, :city, :state, :zip, :monthly_rent, :date_available, :bedrooms, :bathrooms, :square_feet, :description, :pet_policy, :security_deposit, :application_fee, :avatar)
	end
end

