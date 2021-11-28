class RefactorClaim < ActiveRecord::Migration[6.1]
  def change
    rename_table :claims, :entitlements
    rename_column :entitlements, :fulfilled, :paid
    rename_column :releases, :claim_limit, :distributable_total
    add_column :releases, :notification_sent_at, :datetime, null: true
  end
end
