module EventsHelper
   def formatted_date(date)
    date.strftime("%A %B %d %Y | %I:%M %P")
  end

  def formatted_date_two(date)
    date.strftime("%a %d/%m/%Y")
  end
   def formatted_date_three(date)
    date.strftime("%I:%M %P")
  end
end
