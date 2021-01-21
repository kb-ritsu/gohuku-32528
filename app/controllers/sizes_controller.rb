class SizesController < ApplicationController
  before_action :authenticate_staff!

  def new
    @size = Size.new
  end

  def create
    @size = Size.new(size_params)
    if  @size.save
      redirect_to root_path
    else      
      render :new
    end
  end

  private

  def  size_params 
    params.require(:size).permit(:height, :bust, :hip, :sleeve_length,:user_id,:kimono_yuki,:kimono_height,:kimono_maehaba, :kimono_usirohaba,:kimono_kurikosi,:kimono_katahaba,:kimono_sodehaba,:kimono_sodetuke,:kimono_miyatu,:kimono_okumihaba,:kimono_aiduma,:kimono_sodeguti,:kimono_marumi,:kimono_tumasita,:kimono_erihaba,:kimono_kataaki,:kimono_erikata,:kimono_detail)
  end
end
