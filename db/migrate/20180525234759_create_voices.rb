class CreateVoices < ActiveRecord::Migration[5.2]
  def change
    create_table :voices do |t|

      t.timestamps
    end
  end
end
