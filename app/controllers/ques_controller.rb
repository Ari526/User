class QuesController < ApplicationController
  before_action :set_que, only: [:show, :edit, :update, :destroy]

  # GET /ques
  # GET /ques.json
  def index
    @ques = Que.all
  end

  # GET /ques/1
  # GET /ques/1.json
  def show
  end

  # GET /ques/new
  def new
    @que = Que.new
  end

  # GET /ques/1/edit
  def edit
  end

  # POST /ques
  # POST /ques.json
  def create
    @que = Que.new(que_params)

    respond_to do |format|
      if @que.save
        format.html { redirect_to @que, notice: 'Que was successfully created.' }
        format.json { render :show, status: :created, location: @que }
      else
        format.html { render :new }
        format.json { render json: @que.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ques/1
  # PATCH/PUT /ques/1.json
  def update
    respond_to do |format|
      if @que.update(que_params)
        format.html { redirect_to @que, notice: 'Que was successfully updated.' }
        format.json { render :show, status: :ok, location: @que }
      else
        format.html { render :edit }
        format.json { render json: @que.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ques/1
  # DELETE /ques/1.json
  def destroy
    @que.destroy
    respond_to do |format|
      format.html { redirect_to ques_url, notice: 'Que was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_que
      @que = Que.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def que_params
      params.require(:que).permit(:title)
    end
end
