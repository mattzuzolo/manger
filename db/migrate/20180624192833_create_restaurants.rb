class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :yelp_identifier, default: false
      t.string :image_url, default: false
      t.string :yelp_page, default: "https://www.yelp.com/"
      t.string :price
      t.float :rating
      t.integer :review_count
      t.string :photos, default: false
      t.string :demonym
      t.string :demonym_alias, default: false
      t.string :origin_nation
      t.integer :nation_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
