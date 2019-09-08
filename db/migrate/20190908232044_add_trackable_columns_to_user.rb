class AddTrackableColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    
      ## Trackable
      unless column_exists? :users, :sign_in_count
      	add_column :users, :sign_in_count, :integer, :default => 0
      end
      unless column_exists? :users, :current_sign_in_at
      add_column :users, :current_sign_in_at, :datetime
      end
      unless column_exists? :users, :last_sign_in_at
      	add_column :users, :last_sign_in_at, :datetime
      end
      unless column_exists? :users, :current_sign_in_ip
      	add_column :users, :current_sign_in_ip, :string
      end
      unless column_exists? :users, :last_sign_in_ip
      	add_column :users, :last_sign_in_ip, :string
      end
    
  end
end