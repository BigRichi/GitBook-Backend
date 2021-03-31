class RepositoriesController < ApplicationController
    before_action :find_repository, only: [:show, :update]

    def index 
        @repositories = Repository.all
        render json: @repositories
        #check with front end fetch
    end 
    def create 
        @repository = Repository.find_or_create_by(repository_params)
        render json: @repository
    end 
    def show 
        
    end 

    def update 
        @repository.update(repository_params)
        render json: @repository
    end 

    private 

    def repository_params
        params.permit(:git_user_id, :repo_id, :name, :description, :html_url, :language, :size, :forks_count, :commits, :events_url, :last_commit_date, :watchers, :stargazers_count, :repo_creation)
    end 

    def find_repository
        @repository = Repository.find(params[:id])
        render json: @repository
    end
end
