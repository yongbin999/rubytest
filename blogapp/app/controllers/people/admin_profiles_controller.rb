class People::AdminProfilesController < ApplicationController
  before_action :set_people_admin_profile, only: [:show, :edit, :update, :destroy]

  # GET /people/admin_profiles
  # GET /people/admin_profiles.json
  def index
    @people_admin_profiles = People::AdminProfile.all
  end

  # GET /people/admin_profiles/1
  # GET /people/admin_profiles/1.json
  def show
  end

  # GET /people/admin_profiles/new
  def new
    @people_admin_profiles = People::AdminProfile.new
  end

  # GET /people/admin_profiles/1/edit
  def edit
  end

  # POST /people/admin_profiles
  # POST /people/admin_profiles.json
  def create
    @people_admin_profiles = People::AdminProfile.new(people_admin_profiles_params)

    respond_to do |format|
      if @people_admin_profiles.save
        format.html { redirect_to @people_admin_profiles, notice: 'Admin profile was successfully created.' }
        format.json { render :show, status: :created, location: @people_admin_profiles }
      else
        format.html { render :new }
        format.json { render json: @people_admin_profiles.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/admin_profiles/1
  # PATCH/PUT /people/admin_profiles/1.json
  def update
    respond_to do |format|
      if @people_admin_profiles.update(people_admin_profiles_params)
        format.html { redirect_to @people_admin_profiles, notice: 'Admin profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_admin_profiles }
      else
        format.html { render :edit }
        format.json { render json: @people_admin_profiles.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/admin_profiles/1
  # DELETE /people/admin_profiles/1.json
  def destroy
    @people_admin_profiles.destroy
    respond_to do |format|
      format.html { redirect_to people_admin_profiles_url, notice: 'Admin profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_admin_profiles
      @people_admin_profiles = People::AdminProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_admin_profiles_params
      params.require(:people_admin_profiles).permit(:account, :body, :people/admin_id)
    end
end
