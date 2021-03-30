class GitUser < ApplicationRecord
    has_many :git_user_clients
    has_many :clients, through: :git_user_clients
    has_many :repositories
end
