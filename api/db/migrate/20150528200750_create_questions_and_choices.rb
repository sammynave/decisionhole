class CreateQuestionsAndChoices < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title

      t.timestamps null: false
    end

    create_table :choices do |t|
      t.string :title
      t.string :image_url
      t.integer :question_id

      t.timestamps null: false
    end

  end
end
