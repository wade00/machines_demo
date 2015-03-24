class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  after_filter :set_access_control_headers, only: [:index, :show]
  respond_to :html, :json

  def index
    @locations = Location.all
    respond_with(@locations)
  end

  def show
    respond_with(@location)
  end

  def new
    @location = Location.new
    respond_with(@location)
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    @location.phone = "#{@location.phone[0..2]}-#{@location.phone[3..5]}-#{@location.phone[6..10]}"
    @location.save
    respond_with(@location)
  end

  def update
    @location.update(location_params)
    @location.phone = "#{@location.phone[0..2]}-#{@location.phone[3..5]}-#{@location.phone[6..10]}"
    @location.save
    respond_with(@location)
  end

  def destroy
    @location.destroy
    respond_with(@location)
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:address, :city, :state, :zip, :phone)
    end

    def set_access_control_headers
      headers['Access-Control-Allow-Origin'] = "*"
    end
end
