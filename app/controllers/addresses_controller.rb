class AddressesController < ApplicationController
    def index
        @addresses = Address.all
    end

    def new
        @title = "New Address";
        @address = Address.new()
    end

    # Crud functon stuff
    #   Create
    def create
        @address = Address.new(address_params)

        if(@address.save)
            redirect_to @address
        else
            render "new"
        end
    end

    #   Read
    def show
        @address = get_address
        @title = @address.name
    end

    #   Update
    def edit
        #just sending stuff to edit page
        @address = get_address
        @title = "Edit " + @address.name
    end

    def update
        @address = get_address

        if(@address.update(address_params))
            redirect_to @address
        else
            render "edit"
        end            
    end

    def destroy
        @address = get_address
        @address.destroy

        redirect_to addresses_path
    end

    # Helper methods
    private def get_address
        return Address.find(params[:id])
    end

    private def address_params
        params.require(:address).permit(:name, :address, :email, :phone)
    end
end
