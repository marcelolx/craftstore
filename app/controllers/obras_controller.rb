class ObrasController < ApplicationController
  before_action :set_obra, only: [:show, :edit, :update, :destroy]

  # GET /obras
  # GET /obras.json
  def index
    @obras = Obra.where("usuario_id = ?", current_usuario.id)
  end

  # GET /obras/1
  # GET /obras/1.json
  def show
  end

  # GET /obras/new
  def new
    @obra = Obra.new
    @fotos_obra = @obra.fotos_obra.build
  end

  # GET /obras/1/edit
  def edit
  end

  # POST /obras
  # POST /obras.json
  def create
    @obra = Obra.new(obra_params)
    @obra.usuario_id = current_usuario.id

    respond_to do |format|
      if @obra.save
        params[:fotos_obra]['foto'].each do |f|
          @fotos_obra = @obra.fotos_obra.create!(:foto => f,
            :obra_id => @obra.id)
        end

        format.html { redirect_to @obra, notice: 'Obra criada com sucesso' }
        format.json { render :show, status: :created, location: @obra }
      else
        format.html { render :new }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obras/1
  # PATCH/PUT /obras/1.json
  def update
    respond_to do |format|
      if @obra.update(obra_params)
        format.html { redirect_to @obra, notice: 'Obra atualizada com êxito.' }
        format.json { render :show, status: :ok, location: @obra }
      else
        format.html { render :edit }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obras/1
  # DELETE /obras/1.json
  def destroy
    @obra.destroy
    respond_to do |format|
      format.html { redirect_to obras_url, notice: 'Obra foi excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obra
      @obra = Obra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obra_params
      params.require(:obra).permit(:nome, :estilo_obra, :descricao, :preco, :quantidade, 
        fotos_obra_attributes: [:id, :obra_id, :foto])
    end
end