class User < ActiveRecord::Base
  has_many :user_items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def bought_current_item?(item_id)
    my_item = UserItem.where(user_id: self.id, item_id: item_id).take
    if my_item.present?
      return true
    else
      return false
    end
  end

  def get_my_items
    return UserItem.where(user_id: self.id)
  end
end
