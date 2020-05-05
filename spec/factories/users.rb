FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    name                  {"abemasanori"}
    image                 {"abe.png"}
    email                 {"kkk@gmail.com"}
    prefecture_id         {"12"}
    area_id               {"25"}
    homepoint_id          {"167"}
    password              {"000000"}
    password_confirmation {"000000"}
  end

end