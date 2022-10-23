class Admins::ProductionsController < ApplicationController
  def index
    @order_details = OderDetail.all
  end
  
  def update
    @order_detail = OderDetail.find(params[:id])
    @order_detail.update(order_detail_params)
    redirect_to request.referer
  end

  def order_detail_params
    params.require(:oder_detail).permit(:product_status)
  end
end
