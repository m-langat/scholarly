class CreateConferenceSubthemes < ActiveRecord::Migration[6.1]
  def change
    create_table :conference_subthemes do |t|
      t.string :name
      t.references :conference_theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
