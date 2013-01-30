class AddNotesToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :name, :string
    add_column :logs, :description, :string
  end
end
