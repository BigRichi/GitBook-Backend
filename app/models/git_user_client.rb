class GitUserClient < ApplicationRecord
  belongs_to :client
  belongs_to :git_user
end
