class CreateVoices < ActiveRecord::Migration[5.2]
  def change
    create_table :voices do |t|
      t.string :token, null: false
      t.belongs_to :user, foreign_key: true, null: true

      t.timestamps
    end
  end
end
