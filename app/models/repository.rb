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
# new = {
# :git_user_id: 1,
# :repo_id: 324324213423,
# :name: "js-events-mini-challenge",
# :description: nil,
# :html_url: "https://github.com/jpham1109/js-events-mini-challenge",
# :language: "JavaScript",
# :size: 6627,
# :forks_count: 0,
# :commits: 2,
# :events_url: "https://api.github.com/repos/jpham1109/js-events-mini-challenge/events",
# :last_commit_date: Wed, 17 Mar 2021 18:43:57.000000000 UTC +00:00,
# :watchers: nil,
# :stargazers_count: nil,
# :repo_creation: Wed, 17 Mar 2021 17:19:53.000000000 UTC +00:00,
# :created_at: Wed, 31 Mar 2021 22:38:11.497668000 UTC +00:00,
# :updated_at: Wed, 31 Mar 2021 22:38:11.497668000 UTC +00:00
# }