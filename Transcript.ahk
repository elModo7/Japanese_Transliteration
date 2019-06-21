#SingleInstance, Force
; Activar/Desactivar con Control Alt j
^!j::Suspend

; Hiragana
:*C:tsu::つ
:*C:kya::きゃ
:*C:kyu::きゅ
:*C:kyo::きょ
:*C:nya::にゃ
:*C:nyo::にょ
:*C:nyu::にゅ
:*C:sha::しゃ
:*C:shi::し
:*C:shu::しゅ
:*C:sho::しょ
:*C:chi::ち
:*C:cha::ちゃ
:*C:chu::ちゅ
:*C:cho::ちょ
:*C:hya::ひゃ
:*C:hyu::ひゅ
:*C:hyo::ひょ
:*C:mya::みゃ
:*C:myu::みゅ
:*C:myo::みょ
:*C:rya::りゃ
:*C:ryu::りゅ
:*C:ryo::りょ
:*C:gya::ぎゃ
:*C:gyu::ぎゅ
:*C:gyo::ぎょ
:*C:bya::びゃ
:*C:byu::びゅ
:*C:byo::びょ
:*C:pya::ぴゃ
:*C:pyu::ぴゅ
:*C:pyo::ぴょ
:*C:ja::じゃ
:*C:ju::じゅ
:*C:jo::じょ
:*C:ba::ば
:*C:da::だ
:*C:ga::が
:*C:ha::は
:*C:ka::か
:*C:ma::ま
:*C:na::な
:*C:pa::ぱ
:*C:ra::ら
:*C:sa::さ
:*C:ta::た
:*C:wa::わ
:*C:ya::や
:*C:za::ざ
:*C:be::べ
:*C:de::で
:*C:ge::げ
:*C:he::へ
:*C:ke::け
:*C:me::め
:*C:ne::ね
:*C:pe::ぺ
:*C:re::れ
:*C:se::せ
:*C:te::て
:*C:we::ゑ
:*C:ze::ぜ
:*C:bi::び
:*C:gi::ぎ
:*C:hi::ひ
:*C:ki::き
:*C:mi::み
:*C:ni::に
:*C:pi::ぴ
:*C:ri::り
:*C:wi::ゐ
:*C:ji::じ
:*C:bo::ぼ
:*C:do::ど
:*C:go::ご
:*C:ho::ほ
:*C:ko::こ
:*C:mo::も
:*C:no::の
:*C:po::ぽ
:*C:ro::ろ
:*C:so::そ
:*C:to::と
:*C:wo::を
:*C:yo::よ
:*C:zo::ぞ
:*C:bu::ぶ
:*C:gu::ぐ
:*C:fu::ふ
:*C:ku::く
:*C:mu::む
:*C:nu::ぬ
:*C:pu::ぷ
:*C:ru::る
:*C:su::す
:*C:yu::ゆ
:*C:zu::ず   
:*C:di::ぢ
:*C:du::づ
:*C:v::ゔ
:*C:a::あ
:*C:e::え
:*C:i::い
:*C:o::お
:*C:u::う
:*C:ô::おう
:*C:û::うう
:*C:â::ああ
:*C:î::いい
:*C:ê::えい
:*C:q::っ
:*C:n:: ; Caso especial, para poner una n sola hay que poner n{espacio}, con la o omito el espacio para que ponga el simbolo sin espacio
	Send, ん
	Input, key, L1
	if (key = "a") {
		Send, {BackSpace}な
	}
	else if (key = "e") {
		Send, {BackSpace}ね
	}
	else if (key = "i") {
		Send, {BackSpace}に
	}
	else if (key = "o") {
		Send, {BackSpace}の
	}
	else if (key = "u") {
		Send, {BackSpace}ぬ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BackSpace}にゃ
		}
		else if (key2 = "o") {
			Send, {BackSpace}にょ
		}
		else if (key2 = "u") {
			Send, {BackSpace}にゅ
		}
	}
	else{
		SendLevel 1
		#InputLevel, 1
		Send, % key
	}
return

; Katakana
:*:A::ア
:*:E::エ
:*:I::イ
:*:O::オ
:*:U::ウ
:*:Â::アー
:*:Ê::エー
:*:Î::イー
:*:Ô::オー
:*:Û::ウー
:*C:N:: ; Caso especial, para poner una n sola hay que poner n{espacio}, con la o omito el espacio para que ponga el simbolo sin espacio
	Send, ン
	Input, key, L1
	if (key = "A") {
		Send, {BackSpace}ナ
	}
	else if (key = "E") {
		Send, {BackSpace}ネ
	}
	else if (key = "I") {
		Send, {BackSpace}ニ
	}
	else if (key = "O") {
		Send, {BackSpace}ノ
	}
	else if (key = "U") {
		Send, {BackSpace}ヌ
	}
	else if (key = "Y") {
		Input, key2, L1
		if (key2 = "A") {
			Send, {BackSpace}ニャ
		}
		else if (key2 = "O") {
			Send, {BackSpace}ニョ
		}
		else if (key2 = "U") {
			Send, {BackSpace}ニュ
		}
	}
	else{
		SendLevel 1
		Send, % key
	}
return
:*C:V::ヴ
:*C:Q::ッ
:*C:SHI::シ
:*C:CHI::チ
:*C:TSU::ツ
:*C:KYA::キャ
:*C:KYU::キュ
:*C:KYO::キョ
:*C:NYA::ニャ
:*C:NYU::ニュ
:*C:NYO::ニョ
:*C:SHA::シャ
:*C:SHU::シュ
:*C:SHO::ショ
:*C:CHA::チャ
:*C:CHU::チュ
:*C:CHO::チョ
:*C:HYA::ヒャ
:*C:HYU::ヒュ
:*C:HYO::ヒョ
:*C:MYA::ミャ
:*C:MYU::ミュ
:*C:MYO::ミョ
:*C:RYA::リャ
:*C:RYU::リュ
:*C:RYO::リョ
:*C:GYA::ギャ
:*C:GYU::ギュ
:*C:GYO::ギョ
:*C:BYA::ビャ
:*C:BYU::ビュ
:*C:BYO::ビョ
:*C:PYA::ピャ
:*C:PYU::ピュ
:*C:PYO::ピョ
:*C:JA::ジャ
:*C:JU::ジュ
:*C:JO::ジョ
:*C:BA::バ
:*C:DA::ダ
:*C:GA::ガ
:*C:HA::ハ
:*C:KA::カ
:*C:MA::マ
:*C:NA::ナ
:*C:PA::パ
:*C:RA::ラ
:*C:SA::サ
:*C:TA::タ
:*C:WA::ワ
:*C:YA::ヤ
:*C:ZA::ザ
:*C:BE::ベ
:*C:DE::デ
:*C:GE::ゲ
:*C:HE::ヘ
:*C:KE::ケ
:*C:ME::メ
:*C:NE::ネ
:*C:PE::ペ
:*C:RE::レ
:*C:SE::セ
:*C:TE::テ
:*C:WE::ヱ
:*C:ZE::ゼ
:*C:BI::ビ
:*C:GI::ギ
:*C:HI::ヒ
:*C:KI::キ
:*C:MI::ミ
:*C:NI::ニ
:*C:PI::ピ
:*C:RI::リ
:*C:WI::ヰ
:*C:JI::ジ
:*C:BO::ボ
:*C:DO::ド
:*C:GO::ゴ
:*C:HO::ホ
:*C:KO::コ
:*C:MO::モ
:*C:NO::ノ
:*C:PO::ポ
:*C:RO::ロ
:*C:SO::ソ
:*C:TO::ト
:*C:WO::ヲ
:*C:YO::ヨ
:*C:ZO::ゾ
:*C:BU::ブ
:*C:GU::グ
:*C:FU::フ
:*C:KU::ク
:*C:MU::ム
:*C:NU::ヌ
:*C:PU::プ
:*C:RU::ル
:*C:SU::ス
:*C:YU::ユ
:*C:ZU::ズ
:*C:DI::ヂ
:*C:DU::ヅ

; Simbolos
:*:.::。
:*:,::、
:*:!::！
:*:?::？
:*:(::（
:*:)::）
:*:[::［
:*:]::］
:*:«::「
:*:»::」
:*:: ::：{Space}
:*:-::ー
:*:~::〜
:*:@::＠
:*:#::＃
:*:=::＝
:*:$::＄
:*:%::％
:*:&::＆
:*:·::・
:*:|::｜
:*:;::；
:*:+::＋
:*:-::ー
:*:*::＊
:*:1::１
:*:2::２
:*:3::３
:*:4::４
:*:5::５
:*:6::６
:*:7::７
:*:8::８
:*:9::９
:*:0::０
:*:<::＜
:*:>::＞
:*:/::／
:*:\::＼
:*:{::｛
:*:}::｝
:*:'::゛
:*:^::＾
:*:º::゜
:*:_::＿
:*:~::～
