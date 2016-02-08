class CreateParticpations < ActiveRecord::Migration
  def change
    create_table :particpations do |t|
      t.references :person, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
