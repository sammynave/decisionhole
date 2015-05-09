class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
