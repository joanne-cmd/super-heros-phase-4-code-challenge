class HeroesController < ApplicationController
    # get all heroes
    def index
        heroes= Hero.all
        render json: heroes, status: :ok
    end

    # get request of specific hero together with their powers
    def show
        hero = Hero.find(params[:id])
        if hero
            render json: hero, serializer: HeroAndPowerSerializer, status: :ok
        else
            render json: {error:"Hero not found"}, status: :not_found
        end 
    end


end
