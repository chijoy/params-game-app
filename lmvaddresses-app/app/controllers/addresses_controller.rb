class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def new
  end
 
  def create
    @address = Address.create(address: params[:address],
                              type: params[:type],
                              location: params[:location],
                              landmark: params[:landmark],
                              nearby_addresses: params[:nearby_addresses])
    render 'show.html.erb'
  end

  def show
    @address = Address.find(params[:id])
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address: params[:address],
                              type: params[:type],
                              location: params[:location],
                              landmark: params[:landmark],
                              nearby_addresses: params[:nearby_addresses])
    
    render 'show.html.erb'
  end
end

