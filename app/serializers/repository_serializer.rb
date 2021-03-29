class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :repo_id, :description, :html_url, :language, :size, :forks_count, :commits, :last_commit_date, :watchers, :stargazers_count
  has_one :git_user
end
