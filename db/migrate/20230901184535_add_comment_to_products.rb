class AddCommentToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :comment, :text
  end
end
