class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :secret_question
      t.string :secret_answer
      t.string :img
      t.string :oauth

      t.timestamps
    end
  end
end
