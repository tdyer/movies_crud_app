class MakeReviewsAJoinTable < ActiveRecord::Migration
  # Invoked when migrating up
  def up
    # Remove all rows before changing the schema
    Review.delete_all
    remove_column :reviews, :email
    add_column :reviews, :user_id, :integer
  end

  # Invoked when migrating down or rolling back
  def down
    # Remove all rows before changing the schema
    Review.delete_all
    add_column :reviews, :email, :string
    remove_column :reviews, :user_id
  end
end
