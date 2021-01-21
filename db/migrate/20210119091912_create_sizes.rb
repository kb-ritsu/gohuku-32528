class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.integer :height
      t.integer :bust
      t.integer :hip
      t.integer :sleeve_length
      t.integer :kimono_yuki
      t.references :user,            null: false, foreign_key:true
      t.integer :kimono_height
      t.integer :kimono_maehaba
      t.integer :kimono_usirohaba
      t.integer :kimono_kurikosi
      t.integer :kimono_katahaba
      t.integer :kimono_sodehaba
      t.integer :kimono_sodetuke
      t.integer :kimono_miyatu
      t.integer :kimono_okumihaba
      t.integer :kimono_aiduma
      t.integer :kimono_sodeguti
      t.integer :kimono_marumi
      t.integer :kimono_tumasita
      t.integer :kimono_erihaba
      t.integer :kimono_kataaki
      t.integer :kimono_erikata
      t.integer :kimono_detail
      t.timestamps
    end
  end
end
