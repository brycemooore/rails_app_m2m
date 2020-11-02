class PowersController < ApplicationController

    before_action :set_power, only: [:show, :edit, :update, :destroy]

    def index
        @powers = Power.all 
    end
    
    def show

    end 

    def new
        @power = Power.new
    end 

    def create
        power = Power.create(get_params)
        redirect_to power_path(power.id)
    end 

    def edit

    end 

    def update
        @power.update(get_params)
        redirect_to power_path(@power.id)
    end

    def destroy
        @power.delete
        redirect_to powers_path
    end

    private

    def get_params
        params.require(:power).permit(:title, :description)
    end

    def set_power
        @power = Power.find(params[:id])
    end
end
