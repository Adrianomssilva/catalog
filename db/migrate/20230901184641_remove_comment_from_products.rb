class RemoveCommentFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :comment, :string
  end
end
