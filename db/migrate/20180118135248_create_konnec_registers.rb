class CreateKonnecRegisters < ActiveRecord::Migration
  def change
    create_table :konnec_registers do |t|
      t.integer :university
      t.integer :year
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.text :allergy
      t.integer :size

      t.timestamps null: false
    end
  end
end
