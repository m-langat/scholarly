class CreateConferenceThemes < ActiveRecord::Migration[6.1]
  def change
    create_table :conference_themes do |t|
      t.string :name

      t.timestamps
    end
  end
end
