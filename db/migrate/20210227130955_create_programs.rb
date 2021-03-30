class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :date, null:false
      t.string :title, null:false
      t.text   :fact, null:false
      t.text   :feeling, null:false
      t.string :summary, null:false
      t.timestamps
    end
  end
end
