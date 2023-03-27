class HerosController < ApplicationController
    # get all heros
    def index
        heros= Hero.all
        render json: heros
    end
    # get request of specific hero together with their powers
    
end
