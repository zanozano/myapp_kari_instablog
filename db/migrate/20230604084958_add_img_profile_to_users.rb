class AddImgProfileToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :img_profile, :string
  end
end
