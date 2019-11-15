class PinsController < ApplicationController
    def index
        pins = Pin.order(figpin_id: :asc)
        render json: pins, methods: :photo_url, :include => {:line => {:only => [:name, :id]}, :pin_releases => {:only => [:edition, :volume_size], :include => {:event => {:only => [:name]}, :retailer => {:only => [:name]}}} }
    end
    
    def show
        pin =  Pin.find(params[:id])
        
        render json: pin
    end
    
    def create
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
            params.require(:pin).permit(:figpin_id, :name, :photo)
        end
end
