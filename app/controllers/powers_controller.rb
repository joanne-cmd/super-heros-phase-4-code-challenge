class PowersController < ApplicationController
    #  get powers
    def index
        powers= Power.all
        render json: powers
    end
    def show
        power = Power.find(params[:id])
        if power
            render json:power,  status: :ok
        else
            render json:{error:"power not found"}, status: :not_found
        end 
    end

    def update
        power =Power.find(params[:id])
        # power.description="Updated description"
        if power
            power.update!(power_params)
            render json:  power
           
        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end

    private

        def power_params
            params.permit(:name, :description)
        end
    
end
