class CreateMotorbikes < ActiveRecord::Migration[7.0]
  def change
    create_table :motorbikes do |t|
      t.string :name
      t.string :model
      t.string :year

      t.timestamps
    end
  end
end
