class ClientsController < ApplicationController
    before_action :find_client, only: [:show, :update]
    
    def create 
        @client = Client.create(client_params)
        render json: @client
    end 

    def show 
        render json: @client
    end

    def update 
        @client.update(client_params)
        render json: @client
    end

    private 

    def client_params
        params.permit(:first_name, :last_name, :username, :location)
    end

    def find_client
        @client = Client.find(params[:id])
    end
end
