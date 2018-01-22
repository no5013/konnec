class AddGender < ActiveRecord::Migration
  def change
  	add_column :konnec_registers, :gender, :integer, default: 0, after: :nickname
  end
end
