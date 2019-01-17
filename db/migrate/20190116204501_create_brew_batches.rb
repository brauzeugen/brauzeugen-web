class CreateBrewBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :brew_batches do |t|
      t.string :name

      t.timestamps
    end

    change_table :voices do |t|
      t.belongs_to :brew_batch, null: false
    end
  end
end
