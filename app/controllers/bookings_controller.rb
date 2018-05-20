class BookingsController < InheritedResources::Base
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @favorite.save
        BookingMailer.booking_mail(@booking).deliver  ##追記
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  ## 省略

  private

    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end