class CreateJoinTableGossipUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gossips, :users do |t|
      t.index [:gossip_id, :user_id]
      t.index [:user_id, :gossip_id]
    end
  end
end
