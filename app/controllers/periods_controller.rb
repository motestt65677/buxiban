class PeriodsController < ApplicationController

  def create

    start_time = params["start_time"].to_f
    time_span = params["time_span"].to_f
    end_time = start_time + time_span
    period = Period.new(start_time: start_time, end_time: end_time)
    if period.save
      flash[:notice] = "課堂已新增"
    else
      flash[:notice] = "課堂新增失敗請檢查輸入內容"
    end

    redirect_to course_path(params[:course_id])
  end
end
