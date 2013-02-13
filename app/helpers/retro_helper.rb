module RetroHelper

  def date_format(date)
    [ Date::ABBR_DAYNAMES[date.wday],
      Date::ABBR_MONTHNAMES[date.month] + ". " + date.day.to_s,
      date.year
    ].join(", ") if date
  end
end
