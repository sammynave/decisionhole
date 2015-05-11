class AddUserToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :user, index: true, foreign_key: true
    add_reference :votes, :choice, index: true, foreign_key: true
    add_reference :choices, :decision, index: true, foreign_key: true
    add_reference :decisions, :user, index: true, foreign_key: true
  end
end
