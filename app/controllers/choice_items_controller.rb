class ChoiceItemsController < ApplicationController
  before_action :set_choice_item, only: [:show, :edit, :update, :destroy]

  # GET /choice_items
  # GET /choice_items.json
  def index
    @choice_items = ChoiceItem.all
  end

  # GET /choice_items/1
  # GET /choice_items/1.json
  def show
  end

  # GET /choice_items/new
  def new
    @choice_item = ChoiceItem.new
  end

  # GET /choice_items/1/edit
  def edit
  end

  # POST /choice_items
  # POST /choice_items.json
  def create
    @choice_item = ChoiceItem.new(choice_item_params)

    respond_to do |format|
      if @choice_item.save
        format.html { redirect_to @choice_item, notice: 'Choice item was successfully created.' }
        format.json { render :show, status: :created, location: @choice_item }
      else
        format.html { render :new }
        format.json { render json: @choice_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choice_items/1
  # PATCH/PUT /choice_items/1.json
  def update
    respond_to do |format|
      if @choice_item.update(choice_item_params)
        format.html { redirect_to @choice_item, notice: 'Choice item was successfully updated.' }
        format.json { render :show, status: :ok, location: @choice_item }
      else
        format.html { render :edit }
        format.json { render json: @choice_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choice_items/1
  # DELETE /choice_items/1.json
  def destroy
    @choice_item.destroy
    respond_to do |format|
      format.html { redirect_to choice_items_url, notice: 'Choice item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_choice_item
      @choice_item = ChoiceItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_item_params
      params.require(:choice_item).permit(:article_id, :item, :is_correct)
    end
end
