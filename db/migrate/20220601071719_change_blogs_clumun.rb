class ChangeBlogsClumun < ActiveRecord::Migration[5.2]
  change_column :blogs, :content, :string
end
