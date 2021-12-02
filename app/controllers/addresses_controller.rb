class AddressesController < ApplicationController
    def index
        
    end

    def new
        
    end

    def create
        @post = Address.new(params[:post])
    end
end
