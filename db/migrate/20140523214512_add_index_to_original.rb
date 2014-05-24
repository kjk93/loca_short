class AddIndexToOriginal < ActiveRecord::Migration
  def change
  	add_index :shorts, :original, unique: true
  end
end
