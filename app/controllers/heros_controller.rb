class HerosController < ApplicationController
    # get all heros
    def index
        heros= Hero.all
        render json: heros
    end
    # get request of specific hero together with their powers
    def show
        hero = Hero.find(params[:id])
        if hero
            render json: hero, include: [:powers], status: :ok
        else
            render json: {error:"Hero not found"}, status: :not_found
        end 
    end


end
