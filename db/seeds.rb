
# 北海道
hokkaido = Point.create(name: "北海道")
hokkaido_1 = hokkaido.children.create(name: "道南エリア")
hokkaido_1.children.create([{name: "鹿部"},{name: "女那川"},{name: "戸井"},{name: "中村下"},{name: "住吉"}])
hokkaido_2 = hokkaido.children.create(name: "道央エリア")
hokkaido_2.children.create([{name: "浜厚真"},{name: "白老"},{name: "イタンキ浜"},{name: "古平"},{name: "フゴッペ"},{name: "塩谷"},{name: "銭函"},{name: "東小樽"}])

# 青森
aomori = Point.create(name: "青森")
aomori_1 = aomori.children.create(name: "十和田/三沢エリア")
aomori_1.children.create([{name: "高瀬川"},{name: "三沢漁港"}])
aomori_2 = aomori.children.create(name: "八戸エリア")
aomori_2.children.create([{name: "大須賀"},{name: "種差"},{name: "大久喜"},{name: "金浜"}])

# 岩手
iwate = Point.create(name: "岩手")
iwate_1 = iwate.children.create(name: "県北エリア")
iwate_1.children.create([{name: "角の浜"},{name: "川尻"},{name: "大浜"},{name: "有家"},{name: "十府ヶ浦"},{name: "安家川"}])
iwate_2 = iwate.children.create(name: "沿岸エリア")
iwate_2.children.create([{name: "重茂"},{name: "浪板"},{name: "吉浜"},{name: "千丸"},{name: "門之浜"},{name: "米崎"},{name: "高田河口"}])

# 秋田
akita = Point.create(name: "秋田")
akita_1 = akita.children.create(name: "秋田/由利エリア")
akita_1.children.create([{name: "宮崎海岸"},{name: "船越"},{name: "出戸浜"},{name: "二古"},{name: "本荘浜"},{name: "西目"},{name: "三森"},{name: "小砂川"}])

# 宮城
miyagi = Point.create(name: "宮城")
miyagi_1 = miyagi.children.create(name: "三陸エリア")
miyagi_1.children.create([{name: "小泉海水浴場　河口"},{name: "小泉海水浴場　パレス前第2ポイント"},{name: "小泉海水浴場　パレス前第1ポイント"},{name: "本吉 ウニ浜ポイント"},{name: "本吉 石浜ポイント"},{name: "本吉 崖前ポイント"},{name: "長浜海水浴場ポイント"},{name: "大曲海岸"},{name: "浜市海岸"},{name: "野蒜"}])
miyagi_2 = miyagi.children.create(name: "仙台エリア")
miyagi_2.children.create([{name: "菖蒲田浜"},{name: "仙台新港"},{name: "蒲生"},{name: "深沼"},{name: "閖上"},{name: "荒浜"}])

# 山形
yamagata = Point.create(name: "山形")
yamagata_1 = yamagata.children.create(name: "庄内エリア")
yamagata_1.children.create([{name: "湯野浜"}])

# 新潟
niigata = Point.create(name: "新潟")
niigata_1 = niigata.children.create(name: "下越エリア")
niigata_1.children.create([{name: "東港"},{name: "島見"}])
niigata_2 = niigata.children.create(name: "新潟周辺エリア")
niigata_2.children.create([{name: "小針"},{name: "新川"},{name: "港漁港"},{name: "五ヶ浜"},{name: "白岩"},{name: "間瀬"},{name: "牛ちゃん"},{name: "寺泊"}])
niigata_3 = niigata.children.create(name: "中越エリア")
niigata_3.children.create([{name: "高浜"},{name: "大湊"},{name: "荒浜"},{name: "松波"},{name: "米山"}])
niigata_4 = niigata.children.create(name: "上越エリア")
niigata_4.children.create([{name: "郷津"},{name: "谷浜"},{name: "名立"},{name: "百川"}])

# 石川
ishikawa = Point.create(name: "石川")
ishikawa_1 = ishikawa.children.create(name: "能登エリア")
ishikawa_1.children.create([{name: "門前"},{name: "鹿頭"},{name: "柴垣"},{name: "滝"}])
ishikawa_2 = ishikawa.children.create(name: "加賀エリア")
ishikawa_2.children.create([{name: "大浜"},{name: "金石"},{name: "専光寺"},{name: "美川"},{name: "片野"},{name: "塩谷"}])

# 福島
fukushima = Point.create(name: "福島")
fukushima_1 = fukushima.children.create(name: "相双エリア")
fukushima_1.children.create([{name: "ラハイナ"},{name: "カゲスカ"},{name: "ブタ下"},{name: "右田浜"},{name: "鳥"},{name: "坂下"},{name: "北泉"},{name: "チキン下"},{name: "請戸"}])
fukushima_2 = fukushima.children.create(name: "いわきエリア")
fukushima_2.children.create([{name: "岩沢"},{name: "四倉"},{name: "二見が浦"},{name: "ウエストコースト"},{name: "勿来"}])

# 茨城
ibaraki = Point.create(name: "茨城")
ibaraki_1 = ibaraki.children.create(name: "県北エリア")
ibaraki_1.children.create([{name: "二つ島"},{name: "川尻"},{name: "日立駅下"},{name: "河原子"},{name: "日立灯台下"}])
ibaraki_2 = ibaraki.children.create(name: "県央エリア")
ibaraki_2.children.create([{name: "阿字ケ浦"},{name: "大洗"},{name: "大貫"}])
ibaraki_3 = ibaraki.children.create(name: "鹿行エリア")
ibaraki_3.children.create([{name: "京知釜"},{name: "とっぷさんて"},{name: "波崎"}])

# 千葉
chiba = Point.create(name: "千葉")
chiba_1 = chiba.children.create(name: "千葉北エリア")
chiba_1.children.create([{name: "飯岡"},{name: "吉崎"},{name: "作田"},{name: "片貝漁港"},{name: "片貝新堤"},{name: "豊海"},{name: "白里"},{name: "白子"},{name: "一松"},{name: "一宮"},{name: "東浪見"},{name: "志田下"},{name: "夷隅"},{name: "大原"},{name: "岩和田"},{name: "御宿"},{name: "サンドラ"},{name: "部原"}])
chiba_2 = chiba.children.create(name: "千葉南エリア")
chiba_2.children.create([{name: "マルキ"},{name: "グランド下"},{name: "待崎川河口"},{name: "シーサイド"},{name: "京王マンション下"},{name: "墓下"},{name: "J's前"},{name: "白渚"},{name: "花かご"},{name: "千歳"},{name: "千倉"},{name: "平砂浦"},{name: "下洲"},{name: "川名"},{name: "篠部"}])

# 神奈川
shonan = Point.create(name: "神奈川")
shonan_1 = shonan.children.create(name: "湘南エリア")
shonan_1.children.create([{name: "由比ヶ浜"},{name: "稲村ヶ崎"},{name: "七里ヶ浜"},{name: "鎌高前"},{name: "一本松"},{name: "腰越漁港"},{name: "水族館前"},{name: "鵠沼マクドナルド前"},{name: "引地川河口"},{name: "スエヒロ"},{name: "辻堂正面"},{name: "辻堂第二駐車場前"},{name: "クソ下"},{name: "チサン"},{name: "チーパー"},{name: "パーク"},{name: "裏パーク"},{name: "西浜"},{name: "カボチャ"},{name: "白樺"}])
shonan_2 = shonan.children.create(name: "西湘エリア")
shonan_2.children.create([{name: "生コン"},{name: "虹ヶ浜"},{name: "花水川河口"},{name: "大磯"},{name: "小田原"},{name: "吉浜"}])

# 静岡
shizuoka = Point.create(name: "静岡")
shizuoka_1 = shizuoka.children.create(name: "伊豆エリア")
shizuoka_1.children.create([{name: "宇佐美"},{name: "熱川"},{name: "今井浜"},{name: "河津"},{name: "プリンス前"},{name: "白浜"},{name: "多々戸浜"},{name: "入田浜"},{name: "大浜"}])
shizuoka_2 = shizuoka.children.create(name: "新島エリア")
shizuoka_2.children.create([{name: "淡井浦"},{name: "羽伏磯"},{name: "羽伏浦"},{name: "ヘリ下"},{name: "シークレット"},{name: "間々下"},{name: "B堤"}])
shizuoka_3 = shizuoka.children.create(name: "大島エリア")
shizuoka_3.children.create([{name: "小口岬"},{name: "筆島"},{name: "波浮港"},{name: "砂の浜"},{name: "ジュンカメ"},{name: "地引浜"},{name: "ケタリーフ"},{name: "元町前"}])
shizuoka_4 = shizuoka.children.create(name: "静波/御前崎エリア")
shizuoka_4.children.create([{name: "静波"},{name: "片浜"},{name: "御前崎"},{name: "清水"}])
shizuoka_5 = shizuoka.children.create(name: "磐田/浜松エリア")
shizuoka_5.children.create([{name: "掛川"},{name: "豊浜"},{name: "西浜"},{name: "鮫島"},{name: "中田島"},{name: "篠原(ゴルフ場前)"},{name: "ゲームセンター前"},{name: "舞阪/灯台前"},{name: "舞阪/メイン"},{name: "新居"},{name: "潮見坂(県境)"},{name: "潮見坂(トイレ前)"},{name: "潮見坂(GS前)"}])

# 愛知
aichi = Point.create(name: "愛知")
aichi_1 = aichi.children.create(name: "伊良湖エリア")
aichi_1.children.create([{name: "ロングビーチ"},{name: "ロコ"},{name: "東日本"},{name: "全日本"},{name: "港"},{name: "チキン"},{name: "伊勢湾"},{name: "百々"},{name: "寺沢"},{name: "寺沢/老人ホーム前"},{name: "六連"},{name: "伊古部"}])

# 和歌山
wakayama = Point.create(name: "和歌山")
wakayama_1 = wakayama.children.create(name: "磯ノ浦エリア")
wakayama_1.children.create([{name: "磯ノ浦"}])
wakayama_2 = wakayama.children.create(name: "南紀エリア")
wakayama_2.children.create([{name: "田浜"},{name: "那智勝浦"},])
wakayama_3 = wakayama.children.create(name: "伊勢エリア")
wakayama_3.children.create([{name: "三角"},{name: "ラスタ前"},{name: "甲府の浜"},{name: "壊れた水門前"},{name: "松林"},{name: "市後浜"},{name: "ジャン"},{name: "南張"}])

# 福井
fukui = Point.create(name: "福井")
fukui_1 = fukui.children.create(name: "福井エリア")
fukui_1.children.create([{name: "鳥居浜"},{name: "難波江"},{name: "高浜メイン"},{name: "鷹巣五木"},{name: "鷹巣新港"}])

# 高知
kouchi = Point.create(name: "高知")
kouchi_1 = kouchi.children.create(name: "高知エリア")
kouchi_1.children.create([{name: "生見"},{name: "尾崎"},{name: "高知"},{name: "高知/大方浮鞭"},{name: "四万十"},{name: "入野松原"},{name: "田野浦"},{name: "双海"},{name: "平野"},{name: "大枝の浜"}])

#徳島
tokushima = Point.create(name: "徳島")
tokushima_1 = tokushima.children.create(name: "徳島エリア")
tokushima_1.children.create([{name: "内妻"},{name: "穴喰"}])

#島根
shimane = Point.create(name: "島根")
shimane_1 = shimane.children.create(name: "島根エリア")
shimane_1.children.create([{name: "稲佐の浜"},{name: "小田"},{name: "波根"},{name: "浅利"},{name: "波子"},{name: "石見海浜公園"},{name: "千畳"},{name: "津田"},{name: "大塚"},{name: "高津"}])

#鳥取
tottori = Point.create(name: "鳥取")
tottori_1 = tottori.children.create(name: "鳥取エリア")
tottori_1.children.create([{name: "弓ヶ浜"},{name: "大黒"},{name: "ポート赤碕"},{name: "ぼくら"},{name: "羽合"},{name: "石脇"},{name: "井手ヶ浜"},{name: "青谷"},{name: "船磯"},{name: "小沢見"},{name: "白兎"},{name: "賀露"},{name: "岩戸"},{name: "浦富"},{name: "羽尾"},{name: "東浜"}])

# 宮崎
miyazaki = Point.create(name: "宮崎")
miyazaki_1 = miyazaki.children.create(name: "北部エリア")
miyazaki_1.children.create([{name: "小倉ヶ浜"},{name: "金ヶ浜"},{name: "墓下"},{name: "伊倉浜"}])
miyazaki_2 = miyazaki.children.create(name: "南部エリア")
miyazaki_2.children.create([{name: "一ツ瀬河口"},{name: "動物園下"},{name: "石崎浜"},{name: "野球場裏"},{name: "トムワトソン"},{name: "一ツ葉"},{name: "赤江"},{name: "木崎浜"},{name: "こどもの国"},{name: "プリンス前"},{name: "内海"},{name: "伊比井"},{name: "鵜戸下"},{name: "子吹井"},{name: "直線"},{name: "先端"},{name: "大浦"},{name: "昭寿園"},{name: "梅ヶ浜"},{name: "大堂津"},{name: "恋ヶ裏"}])

# 鹿児島
kagoshima = Point.create(name: "鹿児島")
kagoshima_1 = kagoshima.children.create(name: "鹿児島エリア")
kagoshima_1.children.create([{name: "入野"},{name: "鬼口"},{name: "馬渡"},{name: "江口浜"},{name: "照島"},{name: "折口"}])

# 熊本
kumamoto = Point.create(name: "熊本")
kumamoto_1 = kumamoto.children.create(name: "熊本エリア")
kumamoto_1.children.create([{name: "高浜"},{name: "都呂呂"},{name: "火葬場下"}])

# 佐賀
saga = Point.create(name: "佐賀")
saga_1 = saga.children.create(name: "佐賀エリア")
saga_1.children.create([{name: "立神"},{name: "北浜"},{name: "東の浜"}])

# 福岡
fukuoka = Point.create(name: "福岡")
fukuoka_1 = fukuoka.children.create(name: "福岡エリア")
fukuoka_1.children.create([{name: "芥屋"},{name: "野北"},{name: "大口"},{name: "二見ヶ浦"},{name: "奈多"},{name: "三苫"},{name: "新宮"},{name: "釣川河口"},{name: "さつき松原"},{name: "鐘崎"},{name: "インサイドボウル"},{name: "波津漁港"},{name: "汐入川"},{name: "芦屋"},{name: "洞山"},{name: "夏井ヶ浜"},{name: "サメ"},{name: "岩屋"},{name: "脇田"}])

# 沖縄
okinawa = Point.create(name: "沖縄")
okinawa_1 = okinawa.children.create(name: "沖縄エリア")
okinawa_1.children.create([{name: "安謝"},{name: "ボウル"},{name: "タートル"},{name: "残波"},{name: "真栄田"},{name: "部間"},{name: "コーチャン"},{name: "安波"},{name: "スーサイド"}])
