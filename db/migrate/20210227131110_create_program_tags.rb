class CreateProgramTags < ActiveRecord::Migration[6.0]
  def change
    create_table :program_tags do |t|
      t.references :program, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
