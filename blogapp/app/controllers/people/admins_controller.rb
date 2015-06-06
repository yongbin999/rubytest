class People::AdminsController < ApplicationController
  before_action :set_people_admin, only: [:show, :edit, :update, :destroy]

  # GET /people/admins
  # GET /people/admins.json
  def index
    @people_admins = People::Admin.all
  end

  # GET /people/admins/1
  # GET /people/admins/1.json
  def show
  end

  # GET /people/admins/new
  def new
    @people_admin = People::Admin.new
  end

  # GET /people/admins/1/edit
  def edit
  end

  # POST /people/admins
  # POST /people/admins.json
  def create
    @people_admin = People::Admin.new(people_admin_params)

    respond_to do |format|
      if @people_admin.save
        format.html { redirect_to @people_admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @people_admin }
      else
        format.html { render :new }
        format.json { render json: @people_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/admins/1
  # PATCH/PUT /people/admins/1.json
  def update
    respond_to do |format|
      if @people_admin.update(people_admin_params)
        format.html { redirect_to @people_admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_admin }
      else
        format.html { render :edit }
        format.json { render json: @people_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/admins/1
  # DELETE /people/admins/1.json
  def destroy
    @people_admin.destroy
    respond_to do |format|
      format.html { redirect_to people_admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_admin
      @people_admin = People::Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_admin_params
      params.require(:people_admin).permit(:name, :school, :department)
    end
end
