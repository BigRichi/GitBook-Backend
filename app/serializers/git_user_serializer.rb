class GitUserSerializer < ActiveModel::Serializer
  attributes :id, :github_id, :login, :name, :avatar_url, :bio, :location, :site_admin, :hireable, :public_repos, :repos_url, :followers, :following#, :total_watchers, :total_commits, :average_commits, :size_of_repos, :repo_language
  has_many :repositories
  # has_many :clients
end
