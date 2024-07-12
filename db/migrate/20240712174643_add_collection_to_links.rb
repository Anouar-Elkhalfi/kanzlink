class AddCollectionToLinks < ActiveRecord::Migration[7.1]
  def change
    add_reference :links, :collection, foreign_key: true
  end
end
