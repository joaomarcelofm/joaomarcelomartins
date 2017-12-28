class AddPicturesToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :thumbnail, :string
    add_column :projects, :main_image, :string
  end
end
