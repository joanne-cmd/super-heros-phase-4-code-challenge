class HerosController < ApplicationController
    # get all heros
    def index
        heros= Hero.all
        render json: heros
    end
end
