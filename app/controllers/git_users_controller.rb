class GitUsersController < ApplicationController
    before_action :find_git_user, only: [:show, :update]
    def show 
        render json: @git_user
    end

    def create 
        # byebug
        @git_user = GitUser.find_or_create_by(git_user_params)
        render json: @git_user
    end 

    def update 
        @git_user.update(git_user_params)
        render json: @git_user
    end 

    private 

    def git_user_params
        params.permit(:github_id, :login, :name, :avatar_url, :bio, :location, :site_admin, :hireable, :public_repos, :repos_url, :followers, :following, :git_user)
    end

    def find_git_user
        @git_user = GitUser.find(params[:id])
    end
end
