class AddDetailsToBlogPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_posts, :banner_image, :string
    add_column :blog_posts, :content, :text
  end
end
