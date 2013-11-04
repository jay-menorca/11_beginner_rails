class CreateBlogArticles < ActiveRecord::Migration
  def change
    create_table :blog_articles do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
