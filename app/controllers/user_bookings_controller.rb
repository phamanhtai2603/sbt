class UserBookingsController < ApplicationController
  before_action :check_booking_accepted, only: [:destroy]

  def index
    @user_booking_rows = Booking.where(account_id: current_account).paginate(page: params[:page], per_page: 20)
  end

  def create
    if logged_in?
      @tour_price = params.require(:booking).permit :tour_price
      @booking = Booking.new(booking_params)
      @booking.account_id = current_account.id
      @booking.status = 0
     # @booking.total_price = @tour_price*@booking.amount
      if @booking.save
        flash[:info] = t("addsuccessbook")
        redirect_to root_path
      else
        flash[:success] = t("fail")
        redirect_to root_path
      end

    else
      redirect_to sessions_path
    end
  end

  def update
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.status = "canceled"
    if booking.save
      flash[:success] = t("cancelsuccess")
      redirect_to user_bookings_path
    else
      flash[:success] = t("fail")
      redirect_to user_bookings_path
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:amount, :tour_id)
  end

  def check_booking_accepted
    booking = Booking.find(params[:id])
    if booking.status == "accepted"
      flash[:danger] = t("haveaccepted")
      redirect_to user_bookings_path
    end
  end

end
