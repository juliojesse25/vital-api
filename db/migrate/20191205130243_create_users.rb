class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null:false, index: {unique: true}
      t.string :email,null:false, index: {unique: true}
      t.string :password_digest,null:false
      t.numeric :sessions_count,null:false
      t.datetime :last_login

      t.timestamps
    end
  end
end
