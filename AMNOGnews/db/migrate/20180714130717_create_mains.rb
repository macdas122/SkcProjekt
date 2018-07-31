class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.integer :number                 , null: false
      t.string :drug_name               , null: false
      t.string :brand_name              , null: false
      t.string :manufacturer            , null: false
      t.boolean :orphan_drug            , null: false
      t.date :start_procedure           , null: false
      t.date :end_procedure             , null: false
      t.string :status                  , null: false
      t.string :field_of_application    , null: false
      t.string :indication              , null: false
      t.integer :subgroups              , null: false
      t.boolean :benefit                , null: false
      t.string :market_availability     , null: false

     t.timestamps                       null: false
    end
    add_index :mains, :number, unique: true
  end
end
