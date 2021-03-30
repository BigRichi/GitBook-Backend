class CreateGitUserClients < ActiveRecord::Migration[6.1]
  def change
    create_table :git_user_clients do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :git_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
