class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.string :original
      t.string :short

      t.timestamps
    end
  end
end
