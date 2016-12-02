class Item < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def add_hits
    hits = self.hits + 1
    self.update(hits: hits)
  end

  def buy(user_id)
    current_num = self.current_num + 1
    self.update(current_num: current_num)
    UserItem.create(user_id: user_id, item_id: self.id)
  end

end
