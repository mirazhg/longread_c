class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :caption
      t.string :caver_pict
      t.text :lead
      t.text :body
      t.string :unicum
      t.references :field, index: true

      t.timestamps
    end
  end
end
