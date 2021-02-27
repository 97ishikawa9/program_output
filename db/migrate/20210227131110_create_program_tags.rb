class CreateProgramTags < ActiveRecord::Migration[6.0]
  def change
    create_table :program_tags do |t|

      t.timestamps
    end
  end
end
