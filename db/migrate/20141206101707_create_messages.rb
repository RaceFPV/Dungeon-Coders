class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :name
      t.text :content
      t.references :player, index: true

      t.timestamps
    end
  end
end
