class ChangeDatatypeAuth0IdOfUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :auth0_id, :string
  end
end
