class EntresController < ApplicationController
  before_action :set_entre, only: %i[ show edit update destroy ]

  # GET /entres or /entres.json
  def index
    @entres = Entre.where("created_at >=?", Date.today)
  end

  # GET /entres/1 or /entres/1.json
  def show
  end

  # GET /entres/new
  def new
    @entre = Entre.new
  end

  # GET /entres/1/edit
  def edit
  end

  # POST /entres or /entres.json
  def create
    @entre = Entre.new(entre_params)

    respond_to do |format|
      if @entre.save
        format.html { redirect_to entre_url(@entre), notice: "Entre was successfully created." }
        format.json { render :show, status: :created, location: @entre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entres/1 or /entres/1.json
  def update
    respond_to do |format|
      if @entre.update(entre_params)
        format.html { redirect_to entre_url(@entre), notice: "Entre was successfully updated." }
        format.json { render :show, status: :ok, location: @entre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entres/1 or /entres/1.json
  def destroy
    @entre.destroy

    respond_to do |format|
      format.html { redirect_to entres_url, notice: "Entre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entre
      @entre = Entre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entre_params
      params.require(:entre).permit(:meal_type, :calories, :protiens, :carbohydrates, :fats)
    end
end
