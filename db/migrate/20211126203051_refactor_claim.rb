class RefactorClaim < ActiveRecord::Migration[6.1]
  def change
    rename_table :claims, :entitlements
    rename_column :entitlements, :fulfilled, :paid
    remove_column :releases, :claim_limit, :integer, null: false
  end
end
