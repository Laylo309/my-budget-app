module CategoriesHelper
  def total_amount(activities)
    activities.sum(:amount)
  end

  def get_img(category)
    "https://eu.ui-avatars.com/api/?name=#{category.icon}"
  end
end
