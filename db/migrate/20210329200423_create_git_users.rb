class CreateGitUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :git_users do |t|
      t.integer :github_id
      t.string :login
      t.string :name
      t.string :avatar_url
      t.string :bio
      t.string :location
      t.boolean :site_admin
      t.boolean :hireable
      t.integer :public_repos
      t.string :repos_url
      t.integer :followers
      t.integer :following

      t.timestamps
    end
  end
end
