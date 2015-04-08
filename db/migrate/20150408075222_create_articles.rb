class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :caption
      t.text :lead
      t.string :pict

      t.timestamps
    end
  end
end
