class HeroPowersController < ApplicationController
    wrap_parameters format: []

    def index
        heropowers =HeroPower.all
        render json: heropowers, status: :ok
    end

    # create function
    def create
        hero_power = HeroPower.create!(hero_power_params)
        if hero_power
            render json: hero_power, status: :created
        else
            render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private 

    def hero_power_params
        params.permit(:hero_id, :power_id, :strength)
    end

    
end
