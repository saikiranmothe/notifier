class JobNotifficationsController < ApplicationController
  # GET /job_notiffications
  # GET /job_notiffications.json
  def index
    @job_notiffications = JobNotiffication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_notiffications }
    end
  end

  # GET /job_notiffications/1
  # GET /job_notiffications/1.json
  def show
    @job_notiffication = JobNotiffication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_notiffication }
    end
  end

  # GET /job_notiffications/new
  # GET /job_notiffications/new.json
  def new
    @job_notiffication = JobNotiffication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_notiffication }
    end
  end

  # GET /job_notiffications/1/edit
  def edit
    @job_notiffication = JobNotiffication.find(params[:id])
  end

  # POST /job_notiffications
  # POST /job_notiffications.json
  def create
    @job_notiffication = JobNotiffication.new(params[:job_notiffication])

    respond_to do |format|
      if @job_notiffication.save
        format.html { redirect_to @job_notiffication, notice: 'Job notiffication was successfully created.' }
        format.json { render json: @job_notiffication, status: :created, location: @job_notiffication }
      else
        format.html { render action: "new" }
        format.json { render json: @job_notiffication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_notiffications/1
  # PUT /job_notiffications/1.json
  def update
    @job_notiffication = JobNotiffication.find(params[:id])

    respond_to do |format|
      if @job_notiffication.update_attributes(params[:job_notiffication])
        format.html { redirect_to @job_notiffication, notice: 'Job notiffication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_notiffication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_notiffications/1
  # DELETE /job_notiffications/1.json
  def destroy
    @job_notiffication = JobNotiffication.find(params[:id])
    @job_notiffication.destroy

    respond_to do |format|
      format.html { redirect_to job_notiffications_url }
      format.json { head :no_content }
    end
  end
end
