class RemoveHostFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :host, :string
  end
end
