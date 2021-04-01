class GitUser < ApplicationRecord
    has_many :git_user_clients
    has_many :clients, through: :git_user_clients
    has_many :repositories
    after_initialize :init

    def init
        self.hireable = "N/A" if self.hireable.nil?
    end


end






#Total number of Stargazers each git user has
    #to find stargazers we need to sum of the git_user.reposotories.sum{|r| r.stargazers_count}
    #this will need be an instance method

#Total number of Watchers each git user has
    #to find Watchers we need to sum of the git_user.reposotories.sum{|r| r.watchers_count}
    #include if nil
    #this will need be an instance method

#Total number of Watchers each git user has
    #to find Watchers we need to sum of the git_user.reposotories.sum{|r| r.watchers_count}
    #this will need be an instance method












# average number of commits and total commit count
# we will create instance methods for each user repo

# Client.first.git_users.first.repositories.sum{|r| r.commits}/Client.first.git_users.first.repositories.size.to_f

