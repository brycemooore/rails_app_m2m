class HerosController < ApplicationController
    before_action :set_super_hero, only: [:show, :edit, :update, :destroy]
    
    def index
        @super_heros = Hero.all
    end
    
    def show
    end

    def new
        @hero = Hero.new 
    end 

    def create
        hero = Hero.create(get_params)
        redirect_to hero_path(hero.id)
    end 

    def edit
    end

    def update
        hero = @super_hero
        hero.update(get_params)
        redirect_to hero_path(hero.id)
    end 

    def destroy
        @super_hero.delete
        redirect_to heros_path
    end

    def add_power_to_hero
    end
    
    private

    def get_params
        params.require(:hero).permit(:name, :city)
    end 

    def set_super_hero
        @super_hero = Hero.find(params[:id])
    end
end
