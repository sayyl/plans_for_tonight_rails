module EventsHelper
   def formatted_date(date)
    date.strftime("%A %B %d %Y | %I:%M %P")
  end
end
