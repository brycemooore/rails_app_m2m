class CreateSuperHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :super_heros do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
