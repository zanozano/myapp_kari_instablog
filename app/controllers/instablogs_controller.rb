class InstablogsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin_status, only: [:new, :create]

  # GET /instablogs or /instablogs.json
  def index
    @instablogs = Instablog.all
  end

  # GET /instablogs/1 or /instablogs/1.json
  def show
    @instablog = Instablog.find(params[:id])
  end
    # GET /instablogs/new
  def new
    @instablog = Instablog.new
  end

  # GET /instablogs/1/edit
  def edit
  end

  # POST /instablogs or /instablogs.json
  def create
    @instablog = Instablog.new(instablog_params)

    respond_to do |format|
      if @instablog.save
        format.html { redirect_to instablog_url(@instablog), notice: "Instablog was successfully created." }
        format.json { render :show, status: :created, location: @instablog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instablog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instablogs/1 or /instablogs/1.json
  def update
    respond_to do |format|
      if @instablog.update(instablog_params)
        format.html { redirect_to instablog_url(@instablog), notice: "Instablog was successfully updated." }
        format.json { render :show, status: :ok, location: @instablog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instablog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instablogs/1 or /instablogs/1.json
  def destroy
    @instablog.destroy

    respond_to do |format|
      format.html { redirect_to instablogs_url, notice: "Instablog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instablog
      @instablog = Instablog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instablog_params
      params.require(:instablog).permit(:body, :image)
    end

    #admin
    def check_admin_status
    unless current_user.admin?
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
end
