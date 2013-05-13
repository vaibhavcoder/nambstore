class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  default_scope :order=>'title'
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item

#def for ensuring that no line_items is referenced by this product
  def ensure_not_referenced_by_any_line_item
    if line_item.count.zero?
      return true
    else
      error.add(:base, 'Line Item present')
      return false
    end
  end
  
  
end
