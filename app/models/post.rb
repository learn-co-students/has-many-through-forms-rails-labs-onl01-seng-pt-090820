class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(attributes)
    attributes.each do |k, v|
      if !v["name"].empty?
        category = Category.find_or_create_by(name: v["name"])
        self.categories << category
      end
    end
    
  end


end
