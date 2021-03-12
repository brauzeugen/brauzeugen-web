class CreateClaims < ActiveRecord::Migration[6.1]
  def change
    create_table :claims do |t|
      t.references :release, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :fulfilled, null: false, default: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
