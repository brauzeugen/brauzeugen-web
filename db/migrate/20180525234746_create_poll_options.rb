class CreatePollOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_options do |t|
      t.text :description
      t.belongs_to :poll, foreign_key: true, null: false

      t.timestamps
    end
  end
end
