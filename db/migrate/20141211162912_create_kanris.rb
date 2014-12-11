class CreateKanris < ActiveRecord::Migration
  def change
    create_table :kanris do |t|

      t.timestamps
    end
  end
end
