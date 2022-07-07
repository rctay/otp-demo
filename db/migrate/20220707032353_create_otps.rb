class CreateOtps < ActiveRecord::Migration[7.0]
  def change
    create_table :otps do |t|
      t.string :otp
      t.string :mobile
      t.boolean :consumed


      t.index :otp
      t.index :mobile

      t.timestamps
    end
  end
end
