module ApplicationHelper
  def number_to_dollar(num)
    number_to_currency(num, locale: 'en')
  end

  def number_to_yen(num)
    number_to_currency(num, locale: 'ja')
  end
end
