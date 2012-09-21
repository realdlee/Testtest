class DealsController < ApplicationController
  before_filter :authenticate_user!
    
  def new
    @deal = Deal.new
  end

  def create
    @merchant = Merchant.new
    @deal = current_user.deals.new(params[:deal])
    
    if @deal.save
      redirect_to deals_path, :notice => "Nice work!  Your deal should be up shortly."
    else
      render :index
      flash[:notice] = "Your deal wasn't saved."
    end
  end

  #TODO - Change to Deal.active
  def index
    if user_signed_in?
      @deals = Deal.all
    else
      flash[:notice] = "Sorry, you must sign in"
      render new_user_registration_path
    end
  end
end
