class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :comments, reject_if: :comment_blank

  # accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    
      category_attributes.values.each do |category_attribute|
        # byebug
        if category_attribute[:name].present?
          category = Category.find_or_create_by(category_attribute)
          if !self.categories.include?(category)
            self.post_categories.build(category: category)
          end
        end
      end
    
  end

  def comment_blank(attributes) 
    attributes[:content].blank?
  end


end
