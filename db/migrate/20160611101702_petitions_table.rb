class PetitionsTable < ActiveRecord::Migration
  def change
  	create_table :petitions do |t|
  		t.column :name, :string, :limit => 32, :null => false
        t.column :description, :text, :null => false
    end
  end
end
