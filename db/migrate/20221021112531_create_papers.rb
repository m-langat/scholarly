class CreatePapers < ActiveRecord::Migration[6.1]
  def change
    create_table :papers do |t|
      t.string :title
      t.references :conference_theme, null: false, foreign_key: true
      t.references :conference_subtheme, null: false, foreign_key: true
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
