class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :reservation_id
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
