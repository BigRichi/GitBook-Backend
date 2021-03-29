class GitUserSerializer < ActiveModel::Serializer
  attributes :id, :github_id, :login, :name, :avatar_url, :bio, :location, :site_admin, :hireable, :public_repos, :followers, :following
end
