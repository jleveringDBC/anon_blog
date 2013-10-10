class CreateTags < ActiveRecord::Migration
  def change
  	create_table :tags do |col|
  		col.string :name
  		col.timestamps
  	end
  end
end
