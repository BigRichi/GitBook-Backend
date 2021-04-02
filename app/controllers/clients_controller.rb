class ClientsController < ApplicationController
    before_action :find_client, only: [:login]

    def create 
        @client = Client.find_or_create_by(client_params)
        render json: @client
    end 

    def login 
    
    end

    def newName
        @client = Client.find_by(username: params[:username])
        @client.update(params.permit(:first_name, :last_name, :location))
        render json: @client
    end

    private 

    def client_params
        params.permit(:first_name, :last_name, :username, :location)
    end

    def find_client
        @client = Client.find_by(username: params[:username])
        render json: @client
    end

end
