class BookingsController < ApplicationController
  before_action :check_close, only: [:edit]

  def index
    @booking_rows = Booking.paginate(page: params[:page], per_page: 20)
  end

  def edit
    @booking = Booking.find_by id: params[:id]
  end

  def update
    @booking = Booking.find(params[:id])
    @account = @booking.account
    @tour_title = @booking.tour.title
    @tour_date = @booking.tour.start_day
    if @booking.update_attributes(booking_params_edit)
      if params[:booking][:status] == "accepted"
        BookingNotiMailer.booking_accepted(@account, @tour_title, @tour_date).deliver_now
      elsif params[:booking][:status] == "denied"
        BookingNotiMailer.booking_denied(@account, @tour_title, @tour_date).deliver_now
      end
      flash[:success] = t("updatedsuccess")
      redirect_to bookings_path
    else
      render :edit
    end
  end

  private

  def booking_params_edit
    params.require(:booking).permit(:status)
  end

  def check_close
    @booking = Booking.find_by id: params[:id]
    redirect_to(bookings_path) if @booking.tour.start_day.to_i < Time.now.to_i
  end
end