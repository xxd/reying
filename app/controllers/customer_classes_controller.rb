class CustomerClassesController < ApplicationController
  # GET /customer_classes
  # GET /customer_classes.json
  def index
    @customer_classes = CustomerClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_classes }
    end
  end

  # GET /customer_classes/1
  # GET /customer_classes/1.json
  def show
    @customer_class = CustomerClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_class }
    end
  end

  # GET /customer_classes/new
  # GET /customer_classes/new.json
  def new
    @customer_class = CustomerClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_class }
    end
  end

  # GET /customer_classes/1/edit
  def edit
    @customer_class = CustomerClass.find(params[:id])
  end

  # POST /customer_classes
  # POST /customer_classes.json
  def create
    @customer_class = CustomerClass.new(params[:customer_class])

    respond_to do |format|
      if @customer_class.save
        format.html { redirect_to @customer_class, notice: 'Customer class was successfully created.' }
        format.json { render json: @customer_class, status: :created, location: @customer_class }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_classes/1
  # PUT /customer_classes/1.json
  def update
    @customer_class = CustomerClass.find(params[:id])

    respond_to do |format|
      if @customer_class.update_attributes(params[:customer_class])
        format.html { redirect_to @customer_class, notice: 'Customer class was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_classes/1
  # DELETE /customer_classes/1.json
  def destroy
    @customer_class = CustomerClass.find(params[:id])
    @customer_class.destroy

    respond_to do |format|
      format.html { redirect_to customer_classes_url }
      format.json { head :ok }
    end
  end
end
