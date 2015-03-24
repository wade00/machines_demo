class MachinesController < ApplicationController
  before_action :set_machine, only: [:edit, :update, :destroy]
  after_filter :set_access_control_headers, only: [:index]
  respond_to :html, :json

  def index
    @machines = Machine.all
    respond_with(@machines)
  end

  def new
    @machine = Machine.new
    @locations = Location.all
    respond_with(@machine)
  end

  def edit
    @locations = Location.all
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.save
    respond_with(@machine)
  end

  def update
    @machine.update(machine_params)
    respond_with(@machine)
  end

  def destroy
    @machine.destroy
    respond_with(@machine)
  end

  private
    def set_machine
      @machine = Machine.find(params[:id])
    end

    def machine_params
      params.require(:machine).permit(:stock_number, :year, :machine_make, :machine_model, :machine_type, :serial, :hours, :price, :location, :description)
    end

    def set_access_control_headers
      headers['Access-Control-Allow-Origin'] = "*"
    end
end
