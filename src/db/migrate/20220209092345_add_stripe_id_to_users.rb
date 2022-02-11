class AddStripeIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :stripe_id, :bigint
  end
end
