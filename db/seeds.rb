Prefecture.create!(
  [
    {
      id: '1',
      name: '北海道'
    },
    {
      id: '2',
      name: '青森'
    },
    {
      id: '3',
      name: '岩手'
    },
    {
      id: '4',
      name: '秋田'
    },
    {
      id: '5',
      name: '宮城'
    },
    {
      id: '6',
      name: '山形'
    },
    {
      id: '7',
      name: '新潟'
    },
    {
      id: '8',
      name: '石川'
    },
    {
      id: '9',
      name: '福島'
    },
    {
      id: '10',
      name: '茨城'
    },
    {
      id: '11',
      name: '千葉'
    },
    {
      id: '12',
      name: '神奈川'
    },
    {
      id: '13',
      name: '静岡'
    },
    {
      id: '14',
      name: '愛知'
    },
    {
      id: '15',
      name: '和歌山'
    },
    {
      id: '16',
      name: '福井'
    },
    {
      id: '17',
      name: '高知'
    },
    {
      id: '18',
      name: '徳島'
    },
    {
      id: '19',
      name: '島根'
    },
    {
      id: '20',
      name: '鳥取'
    },
    {
      id: '21',
      name: '宮崎'
    },
    {
      id: '22',
      name: '鹿児島'
    },
    {
      id: '23',
      name: '熊本'
    },
    {
      id: '24',
      name: '佐賀'
    },
    {
      id: '25',
      name: '福岡'
    },
    {
      id: '26',
      name: '沖縄'
    }
  ]
)

Area.create!(
  [
    {
      id: '1',
      name: '道南エリア',
      prefecture_id: '1'
    },
    {
      id: '2',
      name: '道央エリア',
      prefecture_id: '1'
    },
    {
      id: '3',
      name: '十和田/三沢エリア',
      prefecture_id: '2'
    },
    {
      id: '4',
      name: '八戸エリア',
      prefecture_id: '2'
    },
    {
      id: '5',
      name: '県北エリア',
      prefecture_id: '3'
    },
    {
      id: '6',
      name: '沿岸エリア',
      prefecture_id: '3'
    },
    {
      id: '7',
      name: '秋田/由利エリア',
      prefecture_id: '4'
    },
    {
      id: '8',
      name: '三陸エリア',
      prefecture_id: '5'
    },
    {
      id: '9',
      name: '仙台エリア',
      prefecture_id: '5'
    },
    {
      id: '10',
      name: '庄内エリア',
      prefecture_id: '6'
    },
    {
      id: '11',
      name: '下越エリア',
      prefecture_id: '7'
    },
    {
      id: '12',
      name: '新潟周辺エリア',
      prefecture_id: '7'
    },
    {
      id: '13',
      name: '中越エリア',
      prefecture_id: '7'
    },
    {
      id: '14',
      name: '上越エリア',
      prefecture_id: '7'
    },
    {
      id: '15',
      name: '能登エリア',
      prefecture_id: '8'
    },
    {
      id: '16',
      name: '加賀エリア',
      prefecture_id: '8'
    },
    {
      id: '17',
      name: '相双エリア',
      prefecture_id: '9'
    },
    {
      id: '18',
      name: 'いわきエリア',
      prefecture_id: '9'
    },
    {
      id: '19',
      name: '県北エリア',
      prefecture_id: '10'
    },
    {
      id: '20',
      name: '県央エリア',
      prefecture_id: '10'
    },
    {
      id: '21',
      name: '鹿行エリア',
      prefecture_id: '10'
    },
    {
      id: '22',
      name: '千葉北エリア',
      prefecture_id: '11'
    },
    {
      id: '23',
      name: '千葉南エリア',
      prefecture_id: '11'
    },
    {
      id: '24',
      name: '湘南エリア',
      prefecture_id: '12'
    },
    {
      id: '25',
      name: '西湘エリア',
      prefecture_id: '12'
    },
    {
      id: '26',
      name: '伊豆エリア',
      prefecture_id: '13'
    },
    {
      id: '27',
      name: '新島エリア',
      prefecture_id: '13'
    },
    {
      id: '28',
      name: '大島エリア',
      prefecture_id: '13'
    },
    {
      id: '29',
      name: '静波/御前崎エリア',
      prefecture_id: '13'
    },
    {
      id: '30',
      name: '磐田/浜松エリア',
      prefecture_id: '13'
    },
    {
      id: '31',
      name: '伊良湖エリア',
      prefecture_id: '14'
    },
    {
      id: '32',
      name: '磯ノ浦エリア',
      prefecture_id: '15'
    },
    {
      id: '33',
      name: '南紀エリア',
      prefecture_id: '15'
    },
    {
      id: '34',
      name: '伊勢エリア',
      prefecture_id: '15'
    },
    {
      id: '35',
      name: '福井エリア',
      prefecture_id: '16'
    },
    {
      id: '36',
      name: '高知エリア',
      prefecture_id: '17'
    },
    {
      id: '37',
      name: '徳島エリア',
      prefecture_id: '18'
    },
    {
      id: '38',
      name: '島根エリア',
      prefecture_id: '19'
    },
    {
      id: '39',
      name: '鳥取エリア',
      prefecture_id: '20'
    },
    {
      id: '40',
      name: '北部エリア',
      prefecture_id: '21'
    },
    {
      id: '41',
      name: '南部エリア',
      prefecture_id: '21'
    },
    {
      id: '42',
      name: '鹿児島エリア',
      prefecture_id: '22'
    },
    {
      id: '43',
      name: '熊本エリア',
      prefecture_id: '23'
    },
    {
      id: '44',
      name: '佐賀エリア',
      prefecture_id: '24'
    },
    {
      id: '45',
      name: '福岡エリア',
      prefecture_id: '25'
    },
    {
      id: '46',
      name: '沖縄エリア',
      prefecture_id: '26'
    }
  ]
)


Point.create!(
  [
    {
      id: '1',
      name: '鹿部',
      area_id: '1'
    },
    {
      id: '2',
      name: '女那川',
      area_id: '1'
    },
    {
      id: '3',
      name: '戸井',
      area_id: '1'
    },
    {
      id: '4',
      name: '中村下',
      area_id: '1'
    },
    {
      id: '5',
      name: '住吉',
      area_id: '1'
    },
    {
      id: '6',
      name: '浜厚真',
      area_id: '2'
    },
    {
      id: '7',
      name: '白老',
      area_id: '2'
    },
    {
      id: '8',
      name: 'イタンキ浜',
      area_id: '2'
    },
    {
      id: '9',
      name: '古平',
      area_id: '2'
    },
    {
      id: '10',
      name: 'フゴッペ',
      area_id: '2'
    },
    {
      id: '11',
      name: '塩谷',
      area_id: '2'
    },
    {
      id: '12',
      name: '銭函',
      area_id: '2'
    },
    {
      id: '13',
      name: '東小樽',
      area_id: '2'
    },
    {
      id: '14',
      name: '高瀬川',
      area_id: '3'
    },
    {
      id: '15',
      name: '三沢漁港',
      area_id: '3'
    },
    {
      id: '16',
      name: '大須賀',
      area_id: '4'
    },
    {
      id: '17',
      name: '種差',
      area_id: '4'
    },
    {
      id: '18',
      name: '大久喜',
      area_id: '4'
    },
    {
      id: '19',
      name: '金浜',
      area_id: '4'
    },
    {
      id: '20',
      name: '角の浜',
      area_id: '5'
    },
    {
      id: '21',
      name: '川尻',
      area_id: '5'
    },
    {
      id: '22',
      name: '大浜',
      area_id: '5'
    },
    {
      id: '23',
      name: '有家',
      area_id: '5'
    },
    {
      id: '24',
      name: '十府ヶ浦',
      area_id: '5'
    },
    {
      id: '25',
      name: '安家川',
      area_id: '5'
    },
    {
      id: '26',
      name: '重茂',
      area_id: '6'
    },
    {
      id: '27',
      name: '浪板',
      area_id: '6'
    },
    {
      id: '28',
      name: '吉浜',
      area_id: '6'
    },
    {
      id: '29',
      name: '千丸',
      area_id: '6'
    },
    {
      id: '30',
      name: '門之浜',
      area_id: '6'
    },
    {
      id: '31',
      name: '米崎',
      area_id: '6'
    },
    {
      id: '32',
      name: '高田河口',
      area_id: '6'
    },
    {
      id: '33',
      name: '宮崎海岸',
      area_id: '7'
    },
    {
      id: '34',
      name: '船越',
      area_id: '7'
    },
    {
      id: '35',
      name: '出戸浜',
      area_id: '7'
    },
    {
      id: '36',
      name: '二古',
      area_id: '7'
    },
    {
      id: '37',
      name: '本荘浜',
      area_id: '7'
    },
    {
      id: '38',
      name: '西目',
      area_id: '7'
    },
    {
      id: '39',
      name: '三森',
      area_id: '7'
    },
    {
      id: '40',
      name: '小砂川',
      area_id: '7'
    },
    {
      id: '41',
      name: '小泉海水浴場　河口',
      area_id: '8'
    },
    {
      id: '42',
      name: '小泉海水浴場　パレス前第2ポイント',
      area_id: '8'
    },
    {
      id: '43',
      name: '小泉海水浴場　パレス前第1ポイント',
      area_id: '8'
    },
    {
      id: '44',
      name: '本吉 ウニ浜ポイント',
      area_id: '8'
    },
    {
      id: '45',
      name: '本吉 石浜ポイント',
      area_id: '8'
    },
    {
      id: '46',
      name: '本吉 崖前ポイント',
      area_id: '8'
    },
    {
      id: '47',
      name: '長浜海水浴場ポイント',
      area_id: '8'
    },
    {
      id: '48',
      name: '大曲海岸',
      area_id: '8'
    },
    {
      id: '49',
      name: '浜市海岸',
      area_id: '8'
    },
    {
      id: '50',
      name: '野蒜',
      area_id: '8'
    },
    {
      id: '51',
      name: '菖蒲田浜',
      area_id: '9'
    },
    {
      id: '52',
      name: '仙台新港',
      area_id: '9'
    },
    {
      id: '53',
      name: '蒲生',
      area_id: '9'
    },
    {
      id: '54',
      name: '深沼',
      area_id: '9'
    },
    {
      id: '55',
      name: '閖上',
      area_id: '9'
    },
    {
      id: '56',
      name: '荒浜',
      area_id: '9'
    },
    {
      id: '57',
      name: '湯野浜',
      area_id: '10'
    },
    {
      id: '58',
      name: '東港',
      area_id: '11'
    },
    {
      id: '59',
      name: '島見',
      area_id: '11'
    },
    {
      id: '60',
      name: '小針',
      area_id: '12'
    },
    {
      id: '61',
      name: '新川',
      area_id: '12'
    },
    {
      id: '62',
      name: '港漁港',
      area_id: '12'
    },
    {
      id: '63',
      name: '五ヶ浜',
      area_id: '12'
    },
    {
      id: '64',
      name: '白岩',
      area_id: '12'
    },
    {
      id: '65',
      name: '間瀬',
      area_id: '12'
    },
    {
      id: '66',
      name: '牛ちゃん',
      area_id: '12'
    },
    {
      id: '67',
      name: '寺泊',
      area_id: '12'
    },
    {
      id: '68',
      name: '高浜',
      area_id: '13'
    },
    {
      id: '69',
      name: '大湊',
      area_id: '13'
    },
    {
      id: '70',
      name: '荒浜',
      area_id: '13'
    },
    {
      id: '71',
      name: '松波',
      area_id: '13'
    },
    {
      id: '72',
      name: '米山',
      area_id: '13'
    },
    {
      id: '73',
      name: '郷津',
      area_id: '14'
    },
    {
      id: '74',
      name: '谷浜',
      area_id: '14'
    },
    {
      id: '75',
      name: '名立',
      area_id: '14'
    },
    {
      id: '76',
      name: '百川',
      area_id: '14'
    },
    {
      id: '77',
      name: '門前',
      area_id: '15'
    },
    {
      id: '78',
      name: '鹿頭',
      area_id: '15'
    },
    {
      id: '79',
      name: '柴垣',
      area_id: '15'
    },
    {
      id: '80',
      name: '滝',
      area_id: '15'
    },
    {
      id: '81',
      name: '大浜',
      area_id: '16'
    },
    {
      id: '82',
      name: '金石',
      area_id: '16'
    },
    {
      id: '83',
      name: '専光寺',
      area_id: '16'
    },
    {
      id: '84',
      name: '美川',
      area_id: '16'
    },
    {
      id: '85',
      name: '片野',
      area_id: '16'
    },
    {
      id: '86',
      name: '塩谷',
      area_id: '16'
    },
    {
      id: '87',
      name: 'ラハイナ',
      area_id: '17'
    },
    {
      id: '88',
      name: 'カゲスカ',
      area_id: '17'
    },
    {
      id: '89',
      name: 'ブタ下',
      area_id: '17'
    },
    {
      id: '90',
      name: '右田浜',
      area_id: '17'
    },
    {
      id: '91',
      name: '鳥',
      area_id: '17'
    },
    {
      id: '92',
      name: '坂下',
      area_id: '17'
    },
    {
      id: '93',
      name: '北泉',
      area_id: '17'
    },
    {
      id: '94',
      name: 'チキン下',
      area_id: '17'
    },
    {
      id: '95',
      name: '請戸',
      area_id: '17'
    },
    {
      id: '96',
      name: '岩沢',
      area_id: '18'
    },
    {
      id: '97',
      name: '四倉',
      area_id: '18'
    },
    {
      id: '98',
      name: '二見が浦',
      area_id: '18'
    },
    {
      id: '99',
      name: 'ウエストコースト',
      area_id: '18'
    },
    {
      id: '100',
      name: '勿来',
      area_id: '18'
    },
    {
      id: '101',
      name: '二つ島',
      area_id: '19'
    },
    {
      id: '102',
      name: '川尻',
      area_id: '19'
    },
    {
      id: '103',
      name: '日立駅下',
      area_id: '19'
    },
    {
      id: '104',
      name: '河原子',
      area_id: '19'
    },
    {
      id: '105',
      name: '日立灯台下',
      area_id: '19'
    },
    {
      id: '106',
      name: '阿字ケ浦',
      area_id: '20'
    },
    {
      id: '107',
      name: '大洗',
      area_id: '20'
    },
    {
      id: '108',
      name: '大貫',
      area_id: '20'
    },
    {
      id: '109',
      name: '京知釜',
      area_id: '21'
    },
    {
      id: '110',
      name: 'とっぷさんて',
      area_id: '21'
    },
    {
      id: '111',
      name: '波崎',
      area_id: '21'
    },
    {
      id: '112',
      name: '飯岡',
      area_id: '22'
    },
    {
      id: '113',
      name: '吉崎',
      area_id: '22'
    },
    {
      id: '114',
      name: '作田',
      area_id: '22'
    },
    {
      id: '115',
      name: '片貝漁港',
      area_id: '22'
    },
    {
      id: '116',
      name: '片貝新堤',
      area_id: '22'
    },
    {
      id: '117',
      name: '豊海',
      area_id: '22'
    },
    {
      id: '118',
      name: '白里',
      area_id: '22'
    },
    {
      id: '119',
      name: '白子',
      area_id: '22'
    },
    {
      id: '120',
      name: '一松',
      area_id: '22'
    },
    {
      id: '121',
      name: '一宮',
      area_id: '22'
    },
    {
      id: '122',
      name: '東浪見',
      area_id: '22'
    },
    {
      id: '123',
      name: '志田下',
      area_id: '22'
    },
    {
      id: '124',
      name: '夷隅',
      area_id: '22'
    },
    {
      id: '125',
      name: '大原',
      area_id: '22'
    },
    {
      id: '126',
      name: '岩和田',
      area_id: '22'
    },
    {
      id: '127',
      name: '御宿',
      area_id: '22'
    },
    {
      id: '128',
      name: 'サンドラ',
      area_id: '22'
    },
    {
      id: '129',
      name: '部原',
      area_id: '22'
    },
    {
      id: '130',
      name: 'マルキ',
      area_id: '23'
    },
    {
      id: '131',
      name: 'グランド下',
      area_id: '23'
    },
    {
      id: '132',
      name: '待崎川河口',
      area_id: '23'
    },
    {
      id: '133',
      name: 'シーサイド',
      area_id: '23'
    },
    {
      id: '134',
      name: '京王マンション下',
      area_id: '23'
    },
    {
      id: '135',
      name: '墓下',
      area_id: '23'
    },
    {
      id: '136',
      name: 'Js前',
      area_id: '23'
    },
    {
      id: '137',
      name: '白渚',
      area_id: '23'
    },
    {
      id: '138',
      name: '花かご',
      area_id: '23'
    },
    {
      id: '139',
      name: '千歳',
      area_id: '23'
    },
    
    {
      id: '140',
      name: '平砂浦',
      area_id: '23'
    },
    {
      id: '141',
      name: '下洲',
      area_id: '23'
    },
    {
      id: '142',
      name: '川名',
      area_id: '23'
    },
    {
      id: '143',
      name: '篠部',
      area_id: '23'
    },
    {
      id: '144',
      name: '由比ヶ浜',
      area_id: '24'
    },
    {
      id: '145',
      name: '稲村ヶ崎',
      area_id: '24'
    },
    {
      id: '146',
      name: '七里ヶ浜',
      area_id: '24'
    },
    {
      id: '147',
      name: '鎌高前',
      area_id: '24'
    },
    {
      id: '148',
      name: '一本松',
      area_id: '24'
    },
    {
      id: '149',
      name: '腰越漁港',
      area_id: '24'
    },
    {
      id: '150',
      name: '水族館前',
      area_id: '24'
    },
    {
      id: '151',
      name: '鵠沼マクドナルド前',
      area_id: '24'
    },
    {
      id: '152',
      name: '引地川河口',
      area_id: '24'
    },
    {
      id: '153',
      name: 'スエヒロ',
      area_id: '24'
    },
    {
      id: '154',
      name: '辻堂正面',
      area_id: '24'
    },
    {
      id: '155',
      name: '辻堂第二駐車場前',
      area_id: '24'
    },
    {
      id: '156',
      name: 'クソ下',
      area_id: '24'
    },
    {
      id: '157',
      name: 'チサン',
      area_id: '24'
    },
    {
      id: '158',
      name: 'チーパー',
      area_id: '24'
    },
    {
      id: '159',
      name: 'パーク',
      area_id: '24'
    },
    {
      id: '160',
      name: '裏パーク',
      area_id: '24'
    },
    {
      id: '161',
      name: '西浜',
      area_id: '24'
    },
    {
      id: '162',
      name: 'カボチャ',
      area_id: '24'
    },
    {
      id: '163',
      name: '白樺',
      area_id: '24'
    },
    {
      id: '164',
      name: '生コン',
      area_id: '25'
    },
    {
      id: '165',
      name: '虹ヶ浜',
      area_id: '25'
    },
    {
      id: '166',
      name: '花水川河口',
      area_id: '25'
    },
    {
      id: '167',
      name: '大磯',
      area_id: '25'
    },
    {
      id: '168',
      name: '小田原',
      area_id: '25'
    },
    {
      id: '169',
      name: '吉浜',
      area_id: '25'
    },
    {
      id: '170',
      name: '宇佐美',
      area_id: '26'
    },
    {
      id: '171',
      name: '熱川',
      area_id: '26'
    },
    {
      id: '172',
      name: '今井浜',
      area_id: '26'
    },
    {
      id: '173',
      name: '河津',
      area_id: '26'
    },
    {
      id: '174',
      name: 'プリンス前',
      area_id: '26'
    },
    {
      id: '175',
      name: '白浜',
      area_id: '26'
    },
    {
      id: '176',
      name: '多々戸浜',
      area_id: '26'
    },
    {
      id: '177',
      name: '入田浜',
      area_id: '26'
    },
    {
      id: '178',
      name: '大浜',
      area_id: '26'
    },
    {
      id: '179',
      name: '淡井浦',
      area_id: '27'
    },
    {
      id: '180',
      name: '羽伏磯',
      area_id: '27'
    },
    {
      id: '181',
      name: 'ヘリ下',
      area_id: '27'
    },
    {
      id: '182',
      name: 'シークレット',
      area_id: '27'
    },
    {
      id: '183',
      name: '間々下',
      area_id: '27'
    },
    {
      id: '184',
      name: 'B堤',
      area_id: '27'
    },
    {
      id: '185',
      name: '小口岬',
      area_id: '28'
    },
    {
      id: '186',
      name: '筆島',
      area_id: '28'
    },
    {
      id: '187',
      name: '波浮港',
      area_id: '28'
    },
    {
      id: '188',
      name: '砂の浜',
      area_id: '28'
    },
    {
      id: '189',
      name: 'ジュンカメ',
      area_id: '28'
    },
    {
      id: '190',
      name: '地引浜',
      area_id: '28'
    },
    {
      id: '191',
      name: 'ケタリーフ',
      area_id: '28'
    },
    {
      id: '192',
      name: '元町前',
      area_id: '28'
    },
    {
      id: '193',
      name: '静波',
      area_id: '29'
    },
    {
      id: '194',
      name: '片浜',
      area_id: '29'
    },
    {
      id: '195',
      name: '御前崎',
      area_id: '29'
    },
    {
      id: '196',
      name: '清水',
      area_id: '29'
    },
    {
      id: '197',
      name: '掛川',
      area_id: '30'
    },
    {
      id: '198',
      name: '豊浜',
      area_id: '30'
    },
    {
      id: '199',
      name: '西浜',
      area_id: '30'
    },
    {
      id: '200',
      name: '鮫島',
      area_id: '30'
    },
    {
      id: '201',
      name: '中田島',
      area_id: '30'
    },
    {
      id: '202',
      name: '篠原(ゴルフ場前)',
      area_id: '30'
    },
    {
      id: '203',
      name: 'ゲームセンター前',
      area_id: '30'
    },
    {
      id: '204',
      name: '舞阪/灯台前',
      area_id: '30'
    },
    {
      id: '205',
      name: '舞阪/メイン',
      area_id: '30'
    },
    {
      id: '206',
      name: '新居',
      area_id: '30'
    },
    {
      id: '207',
      name: '潮見坂(県境)',
      area_id: '30'
    },
    {
      id: '208',
      name: '潮見坂(トイレ前)',
      area_id: '30'
    },
    {
      id: '209',
      name: '潮見坂(GS前)',
      area_id: '30'
    },
    {
      id: '210',
      name: 'ロングビーチ',
      area_id: '31'
    },
    {
      id: '211',
      name: 'ロコ',
      area_id: '31'
    },
    {
      id: '212',
      name: '東日本',
      area_id: '31'
    },
    {
      id: '213',
      name: '全日本',
      area_id: '31'
    },
    {
      id: '214',
      name: '港',
      area_id: '31'
    },
    {
      id: '215',
      name: 'チキン',
      area_id: '31'
    },
    {
      id: '216',
      name: '伊勢湾',
      area_id: '31'
    },
    {
      id: '217',
      name: '百々',
      area_id: '31'
    },
    {
      id: '218',
      name: '寺沢',
      area_id: '31'
    },
    {
      id: '219',
      name: '寺沢/老人ホーム前',
      area_id: '31'
    },
    {
      id: '220',
      name: '六連',
      area_id: '31'
    },
    {
      id: '221',
      name: '伊古部',
      area_id: '31'
    },
    {
      id: '222',
      name: '磯ノ浦',
      area_id: '32'
    },
    {
      id: '223',
      name: '田浜',
      area_id: '33'
    },
    {
      id: '224',
      name: '那智勝浦',
      area_id: '33'
    },
    {
      id: '225',
      name: '三角',
      area_id: '34'
    },
    {
      id: '226',
      name: 'ラスタ前',
      area_id: '34'
    },
    {
      id: '227',
      name: '甲府の浜',
      area_id: '34'
    },
    {
      id: '228',
      name: '壊れた水門前',
      area_id: '34'
    },
    {
      id: '229',
      name: '松林',
      area_id: '34'
    },
    {
      id: '230',
      name: '市後浜',
      area_id: '34'
    },
    {
      id: '231',
      name: 'ジャン',
      area_id: '34'
    },
    {
      id: '232',
      name: '南張',
      area_id: '34'
    },
    {
      id: '233',
      name: '鳥居浜',
      area_id: '35'
    },
    {
      id: '234',
      name: '難波江',
      area_id: '35'
    },
    {
      id: '235',
      name: '高浜メイン',
      area_id: '35'
    },
    {
      id: '236',
      name: '鷹巣五木',
      area_id: '35'
    },
    {
      id: '237',
      name: '鷹巣新港',
      area_id: '35'
    },
    {
      id: '238',
      name: '生見',
      area_id: '36'
    },
    {
      id: '239',
      name: '尾崎',
      area_id: '36'
    },
    {
      id: '240',
      name: '高知',
      area_id: '36'
    },
    {
      id: '241',
      name: '高知/大方浮鞭',
      area_id: '36'
    },
    {
      id: '242',
      name: '四万十',
      area_id: '36'
    },
    {
      id: '243',
      name: '入野松原',
      area_id: '36'
    },
    {
      id: '244',
      name: '田野浦',
      area_id: '36'
    },
    {
      id: '245',
      name: '双海',
      area_id: '36'
    },
    {
      id: '246',
      name: '平野',
      area_id: '36'
    },
    {
      id: '247',
      name: '大枝の浜',
      area_id: '36'
    },
    {
      id: '248',
      name: '内妻',
      area_id: '37'
    },
    {
      id: '249',
      name: '穴喰',
      area_id: '37'
    },
    {
      id: '250',
      name: '稲佐の浜',
      area_id: '38'
    },
    {
      id: '251',
      name: '小田',
      area_id: '38'
    },
    {
      id: '252',
      name: '波根',
      area_id: '38'
    },
    {
      id: '253',
      name: '浅利',
      area_id: '38'
    },
    {
      id: '254',
      name: '波子',
      area_id: '38'
    },
    {
      id: '255',
      name: '石見海浜公園',
      area_id: '38'
    },
    {
      id: '256',
      name: '千畳',
      area_id: '38'
    },
    {
      id: '257',
      name: '津田',
      area_id: '38'
    },
    {
      id: '258',
      name: '大塚',
      area_id: '38'
    },
    {
      id: '259',
      name: '高津',
      area_id: '38'
    },
    {
      id: '260',
      name: '弓ヶ浜',
      area_id: '39'
    },
    {
      id: '261',
      name: '大黒',
      area_id: '39'
    },
    {
      id: '262',
      name: 'ポート赤碕',
      area_id: '39'
    },
    {
      id: '263',
      name: 'ぼくら',
      area_id: '39'
    },
    {
      id: '264',
      name: '羽合',
      area_id: '39'
    },
    {
      id: '265',
      name: '石脇',
      area_id: '39'
    },
    {
      id: '266',
      name: '井手ヶ浜',
      area_id: '39'
    },
    {
      id: '267',
      name: '青谷',
      area_id: '39'
    },
    {
      id: '268',
      name: '船磯',
      area_id: '39'
    },
    {
      id: '269',
      name: '小沢見',
      area_id: '39'
    },
    {
      id: '270',
      name: '白兎',
      area_id: '39'
    },
    {
      id: '271',
      name: '賀露',
      area_id: '39'
    },
    {
      id: '272',
      name: '岩戸',
      area_id: '39'
    },
    {
      id: '273',
      name: '浦富',
      area_id: '39'
    },
    {
      id: '274',
      name: '羽尾',
      area_id: '39'
    },
    {
      id: '275',
      name: '東浜',
      area_id: '39'
    },
    {
      id: '276',
      name: '小倉ヶ浜',
      area_id: '40'
    },
    {
      id: '277',
      name: '金ヶ浜',
      area_id: '40'
    },
    {
      id: '278',
      name: '墓下',
      area_id: '40'
    },
    {
      id: '279',
      name: '伊倉浜',
      area_id: '40'
    },
    {
      id: '280',
      name: '一ツ瀬河口',
      area_id: '41'
    },
    {
      id: '281',
      name: '動物園下',
      area_id: '41'
    },
    {
      id: '282',
      name: '石崎浜',
      area_id: '41'
    },
    {
      id: '283',
      name: '野球場裏',
      area_id: '41'
    },
    {
      id: '284',
      name: 'トムワトソン',
      area_id: '41'
    },
    {
      id: '285',
      name: '一ツ葉',
      area_id: '41'
    },
    {
      id: '286',
      name: '赤江',
      area_id: '41'
    },
    {
      id: '287',
      name: '木崎浜',
      area_id: '41'
    },
    {
      id: '288',
      name: 'こどもの国',
      area_id: '41'
    },
    {
      id: '289',
      name: 'プリンス前',
      area_id: '41'
    },
    {
      id: '290',
      name: '内海',
      area_id: '41'
    },
    {
      id: '291',
      name: '伊比井',
      area_id: '41'
    },
    {
      id: '292',
      name: '鵜戸下',
      area_id: '41'
    },
    {
      id: '293',
      name: '子吹井',
      area_id: '41'
    },
    {
      id: '294',
      name: '直線',
      area_id: '41'
    },
    {
      id: '295',
      name: '先端',
      area_id: '41'
    },
    {
      id: '296',
      name: '大浦',
      area_id: '41'
    },
    {
      id: '297',
      name: '昭寿園',
      area_id: '41'
    },
    {
      id: '298',
      name: '梅ヶ浜',
      area_id: '41'
    },
    {
      id: '299',
      name: '大堂津',
      area_id: '41'
    },
    {
      id: '300',
      name: '恋ヶ裏',
      area_id: '41'
    },
    {
      id: '301',
      name: '入野',
      area_id: '42'
    },
    {
      id: '302',
      name: '鬼口',
      area_id: '42'
    },
    {
      id: '303',
      name: '馬渡',
      area_id: '42'
    },
    {
      id: '304',
      name: '江口浜',
      area_id: '42'
    },
    {
      id: '305',
      name: '照島',
      area_id: '42'
    },
    {
      id: '306',
      name: '折口',
      area_id: '42'
    },
    
    {
      id: '307',
      name: '高浜',
      area_id: '43'
    },
    
    {
      id: '308',
      name: '都呂呂',
      area_id: '43'
    },
    
    {
      id: '309',
      name: '火葬場下',
      area_id: '43'
    },
    
    {
      id: '310',
      name: '立神',
      area_id: '44'
    },
    {
      id: '311',
      name: '北浜',
      area_id: '44'
    },
    {
      id: '312',
      name: '東の浜',
      area_id: '44'
    },
    {
      id: '313',
      name: '芥屋',
      area_id: '45'
    },
    {
      id: '314',
      name: '野北',
      area_id: '45'
    },
    {
      id: '315',
      name: '大口',
      area_id: '45'
    },
    {
      id: '316',
      name: '二見ヶ浦',
      area_id: '45'
    },
    {
      id: '317',
      name: '奈多',
      area_id: '45'
    },
    {
      id: '318',
      name: '三苫',
      area_id: '45'
    },
    {
      id: '319',
      name: '新宮',
      area_id: '45'
    },
    {
      id: '320',
      name: '釣川河口',
      area_id: '45'
    },
    {
      id: '321',
      name: 'さつき松原',
      area_id: '45'
    },
    {
      id: '322',
      name: '鐘崎',
      area_id: '45'
    },
    {
      id: '323',
      name: 'インサイドボウル',
      area_id: '45'
    },
    {
      id: '324',
      name: '波津漁港',
      area_id: '45'
    },
    {
      id: '325',
      name: '汐入川',
      area_id: '45'
    },
    {
      id: '326',
      name: '芦屋',
      area_id: '45'
    },
    {
      id: '327',
      name: '洞山',
      area_id: '45'
    },
    {
      id: '328',
      name: '夏井ヶ浜',
      area_id: '45'
    },
    {
      id: '329',
      name: 'サメ',
      area_id: '45'
    },
    {
      id: '330',
      name: '岩屋',
      area_id: '45'
    },
    {
      id: '331',
      name: '脇田',
      area_id: '45'
    },
    {
      id: '332',
      name: '安謝',
      area_id: '46'
    },
    {
      id: '333',
      name: 'ボウル',
      area_id: '46'
    },
    {
      id: '334',
      name: 'タートル',
      area_id: '46'
    },
    {
      id: '335',
      name: '残波',
      area_id: '46'
    },
    {
      id: '336',
      name: '真栄田',
      area_id: '46'
    },
    {
      id: '337',
      name: '部間',
      area_id: '46'
    },
    {
      id: '338',
      name: 'コーチャン',
      area_id: '46'
    },
    {
      id: '339',
      name: '安波',
      area_id: '46'
    },
    {
      id: '340',
      name: 'スーサイド',
      area_id: '46'
    },
    {
      id: '341',
      name: '千倉',
      area_id: '23'
    },
  ]
)
