class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string "title"
      t.string "description"
      t.string "images"
      t.string "hashtags"
      t.string "github_link"
      t.string "date"
      t.string "html_content"
      t.string "website_url"
      t.string "iframing"

      t.timestamps
    end
  end
end
