class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :ip_address
      t.binary :log_file
      t.timestamps
    end
  end
end
