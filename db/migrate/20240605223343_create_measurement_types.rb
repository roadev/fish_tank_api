class CreateMeasurementTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.string :description
      t.string :source_link

      t.timestamps
    end
  end
end
