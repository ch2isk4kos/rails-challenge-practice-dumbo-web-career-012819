class CreateOffices < ActiveRecord::Migration[5.1]
    def change
        create_table :offices do |t|
            t.string :building
            t.string :company
            t.integer :floor
            t.integer :building_id
            t.integer :company_id

            t.timestamps
        end
    end
end
