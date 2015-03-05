class MachinesController < ApplicationController
  before_action :set_machine, only: [:edit, :update, :destroy]

  respond_to :html, :json

  def index
    @machines = Machine.all
    respond_with(@machines)
  end

  def new
    @machine = Machine.new
    respond_with(@machine)
  end

  def edit
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
end
