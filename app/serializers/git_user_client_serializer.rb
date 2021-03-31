class GitUserClientSerializer < ActiveModel::Serializer
  attributes :id, :git_user_id
  belongs_to :git_user
end
