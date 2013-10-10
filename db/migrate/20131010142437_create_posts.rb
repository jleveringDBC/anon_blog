class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |col|
  		col.string :title
  		col.string :content
  		col.timestamps
  	end
  end
end
