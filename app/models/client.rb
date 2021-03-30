class Client < ApplicationRecord
    has_many :git_user_clients
    has_many :git_users, through: :git_user_clients
end
