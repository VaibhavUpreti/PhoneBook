class PhonebooksController < ApplicationController
  before_action :set_phonebook, only: %i[ show edit update destroy ]
  before_action :authenticate_user! , except: [:index, :show ]
  before_action :correct_user , only: [:edit, :update, :destroy ]

  # GET /phonebooks or /phonebooks.json
  def index
    @phonebooks = Phonebook.all
  end

  # GET /phonebooks/1 or /phonebooks/1.json
  def show
  end

  # GET /phonebooks/new
  def new
    # @phonebook = Phonebook.new
    @phonebook = current_user.phonebooks.build

  end

  # GET /phonebooks/1/edit
  def edit
  end





  # POST /phonebooks or /phonebooks.json
  def create
    #@phonebook = Phonebook.new(phonebook_params)
    @phonebook = current_user.phonebooks.build(phonebook_params)

    respond_to do |format|
      if @phonebook.save
        format.html { redirect_to phonebook_url(@phonebook), notice: "Phonebook was successfully created." }
        format.json { render :show, status: :created, location: @phonebook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phonebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonebooks/1 or /phonebooks/1.json
  def update
    respond_to do |format|
      if @phonebook.update(phonebook_params)
        format.html { redirect_to phonebook_url(@phonebook), notice: "Phonebook was successfully updated." }
        format.json { render :show, status: :ok, location: @phonebook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phonebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonebooks/1 or /phonebooks/1.json
  def destroy
    @phonebook.destroy

    respond_to do |format|
      format.html { redirect_to phonebooks_url, notice: "Phonebook was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def correct_user
    @phonebook = current_user.phonebooks.find_by(id: params[:id])
    redirect_to phonebooks_path , notice: "Not Authorized " if @phonebook.nil?

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phonebook
      @phonebook = Phonebook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phonebook_params
      params.require(:phonebook).permit(:first_name, :last_name, :phone, :email, :twitter, :instagram, :irc_hangle, :discord, :user_id)
    end
end
