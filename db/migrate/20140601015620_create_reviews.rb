class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :rating
      t.string :name
      t.string :email

      t.references :course, index: true
      t.timestamps
    end
  end
end
