class CreateMeasurements < ActiveRecord::Migration[7.1]
  def change
    create_table :measurements do |t|
      t.references :measurement_type, null: false, foreign_key: true
      t.decimal :value
      t.string :unit

      t.timestamps
    end
  end
end
