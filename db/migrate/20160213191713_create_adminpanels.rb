class CreateAdminpanels < ActiveRecord::Migration
  def change
    create_table :adminpanels do |t|

      t.timestamps null: false
    end
  end
end
