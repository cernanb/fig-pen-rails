class PinsController < ApplicationController
    def index
        pins = Pin.all

        render json: pins
    end
    
    def show
        pin =  Pin.find(params[:id])
        
        render json: pin
    end
    
    def create
        binding.pry
        pin =  Pin.new(pin_params)
        if pin.save
            render json: pin
        else
            render json: {status: 500, message: 'Pin cannot be created'}
        end
    end
    
    def update
        pin =  Pin.find(params[:id])
        
        if pin.update(pin_params)
            render json: pin
        else
            render json: {status: 500, message: 'Pin cannot be updated'}
        end
    end
    
    def destroy
        pin =  Pin.find(params[:id])
        
        if pin.destroy
            render json: pin.id
        else
            render json: {status: 500, message: 'Pin cannot be deleted'}
        end
    end

    private
        def pin_params
            params.require(:pin).permit(:edition_size, :name)
        end
end
