class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end
