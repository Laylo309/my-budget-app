class ActivitiesCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :activities_categories do |t|

      t.timestamps
    end

    add_reference :activities_categories, :activity, foreign_key: true
    add_reference :activities_categories, :category, foreign_key: true
  end
end

