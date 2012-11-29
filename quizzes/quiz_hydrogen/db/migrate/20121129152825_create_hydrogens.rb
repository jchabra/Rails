class CreateHydrogens < ActiveRecord::Migration
  def change
    create_table :hydrogens do |t|

      t.timestamps
    end
  end
end
