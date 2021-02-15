class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  # before_save :presave
  after_create :blank_name

  def blank_name
    if self.name == ""
      self.destroy
    end
  end


end
