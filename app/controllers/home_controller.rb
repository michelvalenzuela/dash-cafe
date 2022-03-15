class HomeController < ApplicationController


  def dashboard

   

    @sales_12_months = Sale.where(created_at: 11.months.ago..Date.today).group_by_month(:created_at).sum(:amount)
    #@sales_12_months = Sale.where(created_at: 12.months.ago..Date.today)
     #                 .order(created_at: :asc)
                      

    @quantity_12_months = Sale.where(created_at: 11.months.ago..Date.today).group_by_month(:created_at)
                         .count

    @average_12_months = Sale.where(created_at: 11.months.ago..Date.today).group_by_month(:created_at)
                        .average(:amount)

    #Agrupado por cantidad de ventas
    @pie_chart_12_months = Sale.where(created_at: 11.months.ago..Date.today)
                          .group(:origin)
                          .limit(30)
                          .count
                  
    @pie_chart_6_months = Sale.where(created_at: 5.months.ago..Date.today)
                          .group(:origin)
                          .limit(30)
                          .count

    @pie_chart_3_months = Sale.where(created_at: 2.months.ago..Date.today)
                          .group(:origin)
                          .count
                          
    @pie_chart_last_month = Sale.where(created_at: 30.days.ago..Date.today)
                          .group(:origin)
                          .count

    #Agrupado segun el nombre de la mezcla de cafe: blend_name

    @pie_chart_12_months_blend_name = Sale.where(created_at: 11.months.ago..Date.today)
                                      .group(:blend_name)
                                      .limit(40)
                                      .count
                  
    @pie_chart_6_months_blend_name = Sale.where(created_at: 5.months.ago..Date.today)
                                    .group(:blend_name)
                                    .limit(40)
                                    .count

    @pie_chart_3_months_blend_name = Sale.where(created_at: 2.months.ago..Date.today)
                                    .group(:blend_name)
                                    .count
                          
    @pie_chart_last_month_blend_name = Sale.where(created_at: 30.days.ago..Date.today)
                                      .group(:blend_name)
                                      .count

  end
end
