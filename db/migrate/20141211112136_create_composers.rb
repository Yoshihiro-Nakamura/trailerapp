class CreateComposers < ActiveRecord::Migration
  def change
    create_table :composers do |t|
      t.string :name_ja
      t.string :fullname_ja
      t.string :name_en
      t.string :fullname_en

      t.timestamps
    end
  end
end
