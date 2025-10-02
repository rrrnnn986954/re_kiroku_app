class CreateActions < ActiveRecord::Migration[7.1]
  def change
    create_table :actions do |t|
      t.references :session, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at
      t.text :note

      t.timestamps
    end
  end
end
