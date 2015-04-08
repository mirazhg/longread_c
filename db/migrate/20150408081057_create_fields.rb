class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.text :caption
      t.string :caver_pict
      t.text :lead
      t.text :body
      t.string :teg
      t.string :unicum
      t.references :article, index: true

      t.timestamps
    end
  end
end
