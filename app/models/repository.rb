class Repository < ApplicationRecord
  belongs_to :git_user
  after_initialize :init
  def self.most_commits
    self.all.max_by{|r| r.commits}
  end

  def init 
    self.stargazers_count = 0 if self.stargazers_count.nil?
    self.watchers = 0 if self.watchers.nil?
    self.language = "N/A" if self.language.nil?
    self.description = "N/A" if self.description.nil?
  end
end