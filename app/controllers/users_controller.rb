class UsersController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if  @user.save
      redirect_to root_path
    else      
      render :new
    end
  end

  def search
    @users = User.search(params[:search])
    @results = @p.result.includes(:staff)
    set_product_column
  end


  private

  def  user_params 
    params.require(:user).permit(:first_name, :last_name, :first_name_katakana, :last_name_katakana,:birthday,:phone_number,:telephone_number,:address_number, :city,:building,:address,:staff,:detail,:gender_id,:staff_id)
  end

  def search_product
    @p = User.ransack(params[:q])
  end

  def set_product_column
    @staff_id = User.select("staff_id").distinct
  end
end
