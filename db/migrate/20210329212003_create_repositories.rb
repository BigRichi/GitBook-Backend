class CreateRepositories < ActiveRecord::Migration[6.1]
  def change
    create_table :repositories do |t|
      t.belongs_to :git_user, null: false, foreign_key: true
      t.integer :repo_id
      t.string :description
      t.string :html_url
      t.string :language
      t.integer :size
      t.integer :forks_count
      t.integer :commits
      t.datetime :last_commit_date
      t.integer :watchers
      t.integer :stargazers_count

      t.timestamps
    end
  end
end