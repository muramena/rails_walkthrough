class Category < ApplicationRecord
    has_many :item
    self.table_name = "item_categories"
end