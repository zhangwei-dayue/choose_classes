class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
