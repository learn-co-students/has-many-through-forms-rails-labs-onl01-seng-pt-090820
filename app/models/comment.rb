class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  #accepts_nested_attributes_for :user

  def user_attributes=(user_attr)
    if !user_attr.values.all? {|val| val.blank? }
      user = User.find_or_create_by(user_attr)
      self.user = user
    end
  end

  def to_s
    "#{self.user.username} says: #{self.content}"
  end

end
