class GitUserClientSerializer < ActiveModel::Serializer
  attributes :id
  has_one :client
  has_one :git_user
end
