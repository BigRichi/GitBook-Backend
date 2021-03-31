class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :repo_id, :name, :description, :html_url, :language, :size, :forks_count, :commits, :events_url, :last_commit_date, :watchers, :stargazers_count, :repo_creation
  # belongs_to :git_user
end
