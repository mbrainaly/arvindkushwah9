class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :email
      t.boolean :is_paid, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
