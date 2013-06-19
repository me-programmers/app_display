# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :komoditi do
    nama_komoditi "MyString"
    harga "9.99"
    pasar nil
  end
end
