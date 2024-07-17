class UpdateSubscription < ActiveRecord::Migration[5.2]
  def change
    users = User.joins(:subscriptions).distinct
    if users.present?
      users.each do |user|
        user.subscriptions.each do |subscription|
          expire_date = subscription.created_at + 30.days
          subscription.update(expire_date: expire_date)
        end
      end
    end
  end
end
