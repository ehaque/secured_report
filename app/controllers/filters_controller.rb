class FiltersController < ApplicationController

#def new
#  
#  @filter = Filter.new
#  puts "report is #{params[:id]}"
#end

def new
  @report = Report.find(params[:report])
  @filter = Filter.new
  @extra = "sds"
  puts "################### report id: #{params[:report]}"
  @filter.report_id = @report.id
end

def create
  @filter = Filter.new(params[:filter])
  @report = Report.find(@filter.report_id)
#  puts "#########3########## report id: #{@report.id}"
#  puts @report
  #@filter = @report.filters.build(params[:filter])
  if @filter.save
    redirect_to @report
  else
    render 'new'
  end
end

def edit
  @filter = Filter.find(params[:id])
end

def update
  
  @filter = Filter.find(params[:id])
  @report = @filter.report
  if @filter.update_attributes(params[:filter])
    redirect_to @report
  else
      flash[:error] = "Micropost not updated!"
      render 'edit'
  end
end

end