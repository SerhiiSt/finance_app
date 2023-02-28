class ReportsController < ApplicationController
  def index
  end

  def report_by_category
    @start_date = params[:start_date]
    @end_date = params[:end_date]

    category_data = Operation.where("odate BETWEEN ? AND ?", @start_date, @end_date).group("category_id").sum(:amount)

    category_data = category_data.map { |i, amount| [Category.find(i).name, amount] }

    @category_name = category_data.map { |m| m[0] }
    @category_amount = category_data.map { |m| m[1] }
  end

  def report_by_dates
    @start_date = params[:start_date]
    @end_date = params[:end_date]

    dates_data = Operation.where("odate BETWEEN ? AND ?", @start_date, @end_date).group("odate").sum(:amount)

    dates_data = dates_data.map { |date, amount| [date.strftime("%Y-%m-%d %H:%M %Z"), amount] }

    @date = dates_data.map { |m| m[0] }
    @date_amount = dates_data.map { |m| m[1] }
    puts(@date)
  end
end
