class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :title
      t.string :image_url

      t.timestamps null: false
    end
  end
end
