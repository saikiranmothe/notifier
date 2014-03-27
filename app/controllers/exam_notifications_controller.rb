class ExamNotificationsController < ApplicationController
  # GET /exam_notifications
  # GET /exam_notifications.json
  before_filter :authenticate_user!, :except => [:index,:show]

  def index
    @exam_notifications = ExamNotification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exam_notifications }
    end
  end

  # GET /exam_notifications/1
  # GET /exam_notifications/1.json
  def show
    @exam_notification = ExamNotification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam_notification }
    end
  end

  # GET /exam_notifications/new
  # GET /exam_notifications/new.json
  def new
    @exam_notification = ExamNotification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam_notification }
    end
  end

  # GET /exam_notifications/1/edit
  def edit
    @exam_notification = ExamNotification.find(params[:id])
  end

  # POST /exam_notifications
  # POST /exam_notifications.json
  def create
    @exam_notification = ExamNotification.new(params[:exam_notification])

    respond_to do |format|
      if @exam_notification.save
        format.html { redirect_to @exam_notification, notice: 'Exam notification was successfully created.' }
        format.json { render json: @exam_notification, status: :created, location: @exam_notification }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exam_notifications/1
  # PUT /exam_notifications/1.json
  def update
    @exam_notification = ExamNotification.find(params[:id])

    respond_to do |format|
      if @exam_notification.update_attributes(params[:exam_notification])
        format.html { redirect_to @exam_notification, notice: 'Exam notification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_notifications/1
  # DELETE /exam_notifications/1.json
  def destroy
    @exam_notification = ExamNotification.find(params[:id])
    @exam_notification.destroy

    respond_to do |format|
      format.html { redirect_to exam_notifications_url }
      format.json { head :no_content }
    end
  end
end
