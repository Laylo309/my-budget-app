class CreateJoinTableCategoryActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :join_table_category_activities do |t|

      t.timestamps
    end

    add_reference :join_table_category_activities, :action, foreign_key: true
    add_reference :join_table_category_activities, :category, foreign_key: true
  end
end
