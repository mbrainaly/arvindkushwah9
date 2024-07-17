class AddExpireDateToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :expire_date, :datetime
  end
end
