class RepositoriesController < ApplicationController
    before_action :find_repository, only: [:show, :update]

    def index 
        @repositories = Repository.where(git_user_id: params[:id] )
        render json: @repositories
        #check with front end fetch
    end 

    def show 
        render json: @repository
    end 

    def update 
        @repository.update(repository_params)
        render json: @repository
    end 

    private 

    def repository_params
        params.permit(:git_user_id, :repo_id, :description, :html_url, :language, :size, :forks_count, :commits, :last_commit_date, :watchers, :stargazers_count)
    end 

    def find_repository
        @repository = Repository.find(params[:id])
    end
end
