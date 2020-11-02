class CreateSuperHeroPowers < ActiveRecord::Migration[6.0]
  def change
    create_table :super_hero_powers do |t|
      t.integer :hero_id
      t.integer :power_id

      t.timestamps
    end
  end
end
