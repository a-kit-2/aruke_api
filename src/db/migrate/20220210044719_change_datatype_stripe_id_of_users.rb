class ChangeDatatypeStripeIdOfUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :stripe_id, :string
  end
end
