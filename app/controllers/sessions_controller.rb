class SessionsController < Devise::SessionsController

  def new
    super
  end

  def create
    account = Account.find_by(email: params[:account][:email].downcase)
    if account.active_status==1
      super
    else
      message  = t "accnotactived"
      flash[:warning] = message
      redirect_to root_url
    end
  end

  def update
    super
  end

  def destroy
    super
  end

end
