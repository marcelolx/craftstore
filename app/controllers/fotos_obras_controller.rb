class FotosObrasController < ApplicationController
  before_action :set_fotos_obra, only: [:show, :edit, :update, :destroy]

  # GET /fotos_obras
  # GET /fotos_obras.json
  def index
    @fotos_obras = FotosObra.all
  end

  # GET /fotos_obras/1
  # GET /fotos_obras/1.json
  def show
    @fotos_obra = FotosObra.all.order('id desc')
  end

  # GET /fotos_obras/new
  def new
    @fotos_obra = FotosObra.new
  end

  # GET /fotos_obras/1/edit
  def edit
  end

  # POST /fotos_obras
  # POST /fotos_obras.json
  def create
    @fotos_obra = FotosObra.new(fotos_obra_params)

    respond_to do |format|
      if @fotos_obra.save
        format.html { redirect_to @fotos_obra, notice: 'Fotos obra was successfully created.' }
        format.json { render :show, status: :created, location: @fotos_obra }
      else
        format.html { render :new }
        format.json { render json: @fotos_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotos_obras/1
  # PATCH/PUT /fotos_obras/1.json
  def update
    respond_to do |format|
      if @fotos_obra.update(fotos_obra_params)
        format.html { redirect_to @fotos_obra, notice: 'Fotos obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @fotos_obra }
      else
        format.html { render :edit }
        format.json { render json: @fotos_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos_obras/1
  # DELETE /fotos_obras/1.json
  def destroy
    @fotos_obra.destroy
    respond_to do |format|
      format.html { redirect_to fotos_obras_url, notice: 'Fotos obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotos_obra
      @fotos_obra = FotosObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotos_obra_params
      params.require(:fotos_obra).permit(:obra_id, :foto)
    end
end
