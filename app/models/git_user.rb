class GitUser < ApplicationRecord
    has_many :git_user_clients
    has_many :clients, through: :git_user_clients
    has_many :repositories
    after_initialize :init

    def init
        self.hireable = "N/A" if self.hireable.nil?
    end

    def total_watchers
        repositories.sum{|r| r.watchers}
    end 

    def average_watchers
        total_watchers/self.repositories
    end
    
    def total_stargazers
        repositories.sum{|r| r.stargazers_count}
    end 

    def average_stargazers
        total_stargazers/self.repositories.size
    end
    
    def total_commits
        repositories.sum{|r| r.commits}
    end 

    def average_commits
        total_commits/self.repositories.size
    end
    
    def total_repo_size
        repositories.sum{|r| r.commits}
    end 

    def average_repo_size
        total_commits/self.repositories.size
    end

    def size_of_repos
        repository_size = {
            small_scale: 0,
            medium_scale: 0,
            large_scale: 0
        }
        
        repositories.each do |repository|
            if repository.size < 100
                repository_size[:small_scale] += 1
            elsif repository.size > 100 && repository.size < 1000
                repository_size[:medium_scale] += 1
            else
                repository_size[:large_scale] += 1
            end
        end               
        return repository_size
    end
    

    def repo_language
        language = {}
        repositories.each do |repository|
            if language.keys.include?(repository.language)
                language["#{repository.language}"] += 1
            else
                language["#{repository.language}"] = 1
            end
        end
        return language
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

