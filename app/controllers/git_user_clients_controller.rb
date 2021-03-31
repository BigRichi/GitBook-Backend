class GitUserClientsController < ApplicationController

    def index 
        @git_user_clients = GitUserClient.where(client_id: @client)
    end 

    def create 
        git_user_client_params = params.permit(:client_id, :git_user_id)
        @git_user_client = GitUserClient.find_or_create_by(git_user_client_params)
        render json: @git_user_client
    end 

    def delete
        @git_user_client = GitUserClient.find(params[:id])
        @git_user_client.destroy
    end 
end
