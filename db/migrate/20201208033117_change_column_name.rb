class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :book_reviews, :user_int, :user_id
  end
end
