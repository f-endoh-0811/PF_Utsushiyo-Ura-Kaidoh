puts 'regionsのseed_fu、実行開始。'

Region.seed_once(:id,
  { id: 1, region_name: "北海道・東北" },
  { id: 2, region_name: "関東" },
  { id: 3, region_name: "北陸・甲信越" },
  { id: 4, region_name: "東海" },
  { id: 5, region_name: "関西" },
  { id: 6, region_name: "中国" },
  { id: 7, region_name: "四国" },
  { id: 8, region_name: "九州・沖縄" },
)

puts 'regionsのseed_fu、実行完了。'