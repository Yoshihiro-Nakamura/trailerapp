class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title_ja
      t.string :title_en
      t.references :composer, index: true

      t.timestamps
    end
  end
end
