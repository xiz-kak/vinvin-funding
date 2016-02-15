require "#{Rails.root}/lib/import.rb"

data_folder = "#{Rails.root}/db/fixtures/data"

Import.csv_read(data_folder, 'languages.csv', true) do |line, idx|
  Language.seed do |s|
    s.id         = line[0]
    s.code       = line[1]
    s.name       = line[2]
    s.name_en    = line[3]
    s.sort_order = line[4]
  end
end

Import.csv_read(data_folder, 'nations.csv', true) do |line, idx|
  Nation.seed do |s|
    s.id         = line[0]
    s.sort_order = line[1]
    s.name       = line[2]
  end
end

Import.csv_read(data_folder, 'divisions.csv', true) do |line, idx|
  Division.seed do |s|
    s.id         = line[0]
    s.code       = line[1]
    s.val        = line[2]
    s.sort_order = line[3]
    s.description = line[4]
  end
end

Import.csv_read(data_folder, 'divisions_mls.csv', true) do |line, idx|
  DivisionsMl.seed do |s|
    s.id         = line[0]
    s.division_id = line[1]
    s.language_id = line[2]
    s.name       = line[3]
  end
end

Import.csv_read(data_folder, 'categories.csv', true) do |line, idx|
  Category.seed do |s|
    s.id         = line[0]
    s.sort_order = line[1]
  end
end

Import.csv_read(data_folder, 'categories_mls.csv', true) do |line, idx|
  CategoriesMl.seed do |s|
    s.id         = line[0]
    s.category_id = line[1]
    s.language_id = line[2]
    s.name       = line[3]
  end
end

Import.csv_read(data_folder, 'currencies.csv', true) do |line, idx|
  Currency.seed do |s|
    s.id         = line[0]
    s.sort_order = line[1]
    s.code       = line[2]
    s.symbol     = line[3]
  end
end

Import.csv_read(data_folder, 'currencies_mls.csv', true) do |line, idx|
  CurrenciesMl.seed do |s|
    s.id         = line[0]
    s.currency_id = line[1]
    s.language_id = line[2]
    s.name       = line[3]
  end
end

Import.csv_read(data_folder, 'payment_vendors.csv', true) do |line, idx|
  PaymentVendor.seed do |s|
    s.id         = line[0]
    s.sort_order = line[1]
    s.logo_image_path = line[2]
  end
end

Import.csv_read(data_folder, 'payment_vendors_mls.csv', true) do |line, idx|
  PaymentVendorsMl.seed do |s|
    s.id         = line[0]
    s.payment_vendor_id = line[1]
    s.language_id = line[2]
    s.name       = line[3]
  end
end
