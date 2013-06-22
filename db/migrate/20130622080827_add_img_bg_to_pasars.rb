class AddImgBgToPasars < ActiveRecord::Migration
  def change
    add_column :pasars, :imgbg, :string
  end
end
