class CreateTbPeriods < ActiveRecord::Migration
  def change
    create_table :tb_periods do |t|
      t.datetime :period

      t.timestamps
    end
  end
end
