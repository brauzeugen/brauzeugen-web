class CreateReleases < ActiveRecord::Migration[6.1]
  def change
    create_table :releases do |t|
      t.text :email_template
      t.integer :claim_limit, null: false

      t.timestamps
    end
  end
end
