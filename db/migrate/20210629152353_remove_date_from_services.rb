class RemoveDateFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :date, :date
    remove_column :services, :type, :string
    add_column :services, :plan, :string
  end
end
