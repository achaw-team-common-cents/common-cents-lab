class CreatePayFrequencies < ActiveRecord::Migration
  def change
    create_table :pay_frequencies do |t|
      t.string :nameFre

      t.timestamps null: true
    end
  end
end
