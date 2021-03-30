class GitUserClientsController < ApplicationController
    def create 
        git_user_client_params = params.permit(:client_id, :git_user_id)
        @git_user_client = GitUserClient.create(git_user_client_params)
        render json: @git_user_client
    end 

    def delete
        @git_user_client = GitUserClient.find(params[:id])
        @git_user_client.destroy
    end 
end