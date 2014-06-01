class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_code
      t.text :course_desc
      t.integer :credit_value
      t.string :course_website

      t.timestamps
    end
  end
end
