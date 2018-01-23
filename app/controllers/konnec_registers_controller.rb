class KonnecRegistersController < ApplicationController
  before_action :set_konnec_register, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: ENV["KONNEC_USERNAME"], password: ENV["KONNEC_PASSWORD"], except: :create

  # GET /konnec_registers
  # GET /konnec_registers.json
  def index()
    university = params[:university]
    if university.present? and university.casecmp("ku") == 0
      @konnec_registers = KonnecRegister.where(university: 0)
    elsif university.present? and university.casecmp("cu") == 0
      @konnec_registers = KonnecRegister.where(university: 1)
    else
      @konnec_registers = KonnecRegister.order(created_at: :desc)
    end

    @konnec_registers = @konnec_registers.page(params[:page]).per(10)
  end

  # GET /konnec_registers/1
  # GET /konnec_registers/1.json
  def show
  end

  # GET /konnec_registers/new
  def new
    @konnec_register = KonnecRegister.new
  end

  # GET /konnec_registers/1/edit
  def edit
  end

  # POST /konnec_registers
  # POST /konnec_registers.json
  def create
    @konnec_register = KonnecRegister.new(konnec_register_params)

    respond_to do |format|
      if @konnec_register.save
        format.html { redirect_to @konnec_register, notice: 'Konnec register was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @konnec_register }
      else
        format.html { render :new }
        format.js { render layout: false, content_type: 'text/javascript' }
        format.json { render json: @konnec_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /konnec_registers/1
  # PATCH/PUT /konnec_registers/1.json
  def update
    respond_to do |format|
      if @konnec_register.update(konnec_register_params)
        format.html { redirect_to @konnec_register, notice: 'Konnec register was successfully updated.' }
        format.json { render :show, status: :ok, location: @konnec_register }
      else
        format.html { render :edit }
        format.json { render json: @konnec_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /konnec_registers/1
  # DELETE /konnec_registers/1.json
  def destroy
    @konnec_register.destroy
    respond_to do |format|
      format.html { redirect_to konnec_registers_url, notice: 'Konnec register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_konnec_register
      @konnec_register = KonnecRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def konnec_register_params
      params.require(:konnec_register).permit(:university, :year, :first_name, :last_name, :nickname, :gender, :allergy, :size)
    end
end
