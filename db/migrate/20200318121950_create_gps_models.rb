class CreateGpsModels < ActiveRecord::Migration[5.2]
  def change
    create_table :gps_models do |t|
      t.references :vehicle, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.datetime :sent_at

      t.timestamps
    end
  end
end
