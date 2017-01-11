class HomeController < ApplicationController
  def index
  	@property = Property.new
  end
end
