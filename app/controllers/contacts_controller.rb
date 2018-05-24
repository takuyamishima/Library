class ContactsController < InheritedResources::Base
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  def index
  end
  ## 省略

  def create
    @contact = Contact.new(contact_params)
    @contact.user_email = current_user.email
    @contact.name = current_user.user_name
    respond_to do |format|
      if @contact.save
        ContactMailer.contact_mail(@contact).deliver  ##追記
        format.html { redirect_to books_path, notice: '本のリクエストが完了しました' }
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