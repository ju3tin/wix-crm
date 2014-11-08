class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
     
    respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @contacts }
    end

  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @activity = Activity.new


  end


  # GET /contacts/new
  def new
    @contact = Contact.new


    Hive::Client.new do |config|
      config.secret_key = 'd7d066b8-d609-405b-b6e4-bb2e60975c73'
      config.app_id = '13a4baa8-bfde-bc52-9ead-daa8592a95f9'
      config.instance_id = 'INSTANCE-ID'
    end
    puts "HELLO HIVE"

    contact = Hive::Contact.new
    contact.name.first = 'E2E'
    contact.name.last = 'Cool'
    contact.company.name = 'Wix'
    contact.company.role = 'CEO'
    contact.add_email(email: 'alext@wix.com', tag: 'work')
    contact.add_phone(phone: '123456789', tag: 'work')
    contact.add_address(tag: 'home', address: '28208 N Inca St.', neighborhood: 'LODO', city: 'Denver', region: 'CO', country: 'US', postalCode: '80202')
    contact.add_date(date: Time.now.iso8601(3), tag: 'E2E')
    contact.add_url(url: 'wix.com', tag: 'site')

  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :company_name, :job_title, :telephone, :notes)
    end
end
