#NoEnv
#InputLevel, 1
#SingleInstance, Force
; Activar/Desactivar con Control Alt j
^!j::Suspend

; Hiragana
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
:*C:we::ゑ
:*C:ze::ぜ
:*C:bi::び
:*C:gi::ぎ
:*C:hi::ひ
:*C:ki::き
:*C:mi::み
:*C:ni::に
:*C:pi::ぴ
:*C:ta::た
:*C:te::て
:*C:to::と
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
:*C:wo::を
:*C:yo::よ
:*C:zo::ぞ
:*C:bu::ぶ
:*C:gu::ぐ
:*C:fu::ふ
:*C:fa::ふぁ
:*C:fe::ふぇ
:*C:fi::ふぃ
:*C:fo::ふぉ
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
	Input, key, L1, {BackSpace} ; Include special key BS as a trigger (special keys need to be specifically set here)
	if (key = "a") {
		Send, {BS}な
	}
	else if (key = "e") {
		Send, {BS}ね
	}
	else if (key = "i") {
		Send, {BS}に
	}
	else if (key = "o") {
		Send, {BS}の
	}
	else if (key = "u") {
		Send, {BS}ぬ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}にゃ
		}
		else if (key2 = "o") {
			Send, {BS}にょ
		}
		else if (key2 = "u") {
			Send, {BS}にゅ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:t::
	Send, っ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}た
	}
	else if (key = "e") {
		Send, {BS}て
	}
	else if (key = "o") {
		Send, {BS}と
	}
	else if (key = "s") {
		Input, key2, L1
		if (key2 = "u") {
			Send, {BS}つ
		}else{
			SendLevel 1
			Send, % key
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:p::
	Send, っ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}ぱ
	}
	else if (key = "e") {
		Send, {BS}ぺ
	}
	else if (key = "i") {
		Send, {BS}ぴ
	}
	else if (key = "o") {
		Send, {BS}ぽ
	}
	else if (key = "u") {
		Send, {BS}ぷ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}ぴゃ
		}
		else if (key2 = "o") {
			Send, {BS}ぴょ
		}
		else if (key2 = "u") {
			Send, {BS}ぴゅ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:b::
	Send, っ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}ば
	}
	else if (key = "e") {
		Send, {BS}べ
	}
	else if (key = "i") {
		Send, {BS}び
	}
	else if (key = "o") {
		Send, {BS}ぼ
	}
	else if (key = "u") {
		Send, {BS}ぶ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}びゃ
		}
		else if (key2 = "o") {
			Send, {BS}びょ
		}
		else if (key2 = "u") {
			Send, {BS}びゅ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:g::
	Send, っ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}が
	}
	else if (key = "e") {
		Send, {BS}げ
	}
	else if (key = "i") {
		Send, {BS}ぎ
	}
	else if (key = "o") {
		Send, {BS}ご
	}
	else if (key = "u") {
		Send, {BS}ぐ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}ぎゃ
		}
		else if (key2 = "o") {
			Send, {BS}ぎょ
		}
		else if (key2 = "u") {
			Send, {BS}ぎゅ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:k::
	Send, っ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}か
	}
	else if (key = "e") {
		Send, {BS}け
	}
	else if (key = "i") {
		Send, {BS}き
	}
	else if (key = "o") {
		Send, {BS}こ
	}
	else if (key = "u") {
		Send, {BS}く
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}きゃ
		}
		else if (key2 = "o") {
			Send, {BS}きょ
		}
		else if (key2 = "u") {
			Send, {BS}きゅ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:d::
	Send, っ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}だ
	}
	else if (key = "e") {
		Send, {BS}で
	}
	else if (key = "i") {
		Send, {BS}ぢ
	}
	else if (key = "o") {
		Send, {BS}ど
	}
	else if (key = "u") {
		Send, {BS}づ
	}
	else{
		gosub, sendDefault
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
:*C:FA::ファ
:*C:FE::フェ
:*C:FI::フィ
:*C:FO::フォ
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
:*C:N:: ; Caso especial, para poner una n sola hay que poner n{espacio}, con la o omito el espacio para que ponga el simbolo sin espacio
	Send, ン
	Input, key, L1, {BackSpace} ; Include special key BS as a trigger (special keys need to be specifically set here)
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
		gosub, sendDefault
	}
return
:*C:T::
	Send, ッ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}タ
	}
	else if (key = "e") {
		Send, {BS}テ
	}
	else if (key = "o") {
		Send, {BS}ト
	}
	else if (key = "s") {
		Input, key2, L1
		if (key2 = "u") {
			Send, {BS}ツ
		}else{
			SendLevel 1
			Send, % key
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:P::
	Send, ッ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}パ
	}
	else if (key = "e") {
		Send, {BS}ペ
	}
	else if (key = "i") {
		Send, {BS}ピ
	}
	else if (key = "o") {
		Send, {BS}ポ
	}
	else if (key = "u") {
		Send, {BS}プ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}ピャ
		}
		else if (key2 = "o") {
			Send, {BS}ピョ
		}
		else if (key2 = "u") {
			Send, {BS}ピュ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:B::
	Send, ッ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}バ
	}
	else if (key = "e") {
		Send, {BS}ベ
	}
	else if (key = "i") {
		Send, {BS}ビ
	}
	else if (key = "o") {
		Send, {BS}ボ
	}
	else if (key = "u") {
		Send, {BS}ブ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}ビャ
		}
		else if (key2 = "o") {
			Send, {BS}ビョ
		}
		else if (key2 = "u") {
			Send, {BS}ビュ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:G::
	Send, ッ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}ガ
	}
	else if (key = "e") {
		Send, {BS}ゲ
	}
	else if (key = "i") {
		Send, {BS}ギ
	}
	else if (key = "o") {
		Send, {BS}ゴ
	}
	else if (key = "u") {
		Send, {BS}グ
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}ギャ
		}
		else if (key2 = "o") {
			Send, {BS}ギョ
		}
		else if (key2 = "u") {
			Send, {BS}ギュ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:K::
	Send, ッ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}カ
	}
	else if (key = "e") {
		Send, {BS}ケ
	}
	else if (key = "i") {
		Send, {BS}キ
	}
	else if (key = "o") {
		Send, {BS}コ
	}
	else if (key = "u") {
		Send, {BS}ク
	}
	else if (key = "y") {
		Input, key2, L1
		if (key2 = "a") {
			Send, {BS}キャ
		}
		else if (key2 = "o") {
			Send, {BS}キョ
		}
		else if (key2 = "u") {
			Send, {BS}キュ
		}
	}
	else{
		gosub, sendDefault
	}
return
:*C:D::
	Send, ッ
	Input, key, L1, {BS}
	if (key = "a") {
		Send, {BS}ダ
	}
	else if (key = "e") {
		Send, {BS}デ
	}
	else if (key = "i") {
		Send, {BS}ヂ
	}
	else if (key = "o") {
		Send, {BS}ド
	}
	else if (key = "u") {
		Send, {BS}ヅ
	}
	else{
		gosub, sendDefault
	}
return

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

sendDefault:
	FoundPos := RegExMatch(ErrorLevel, "EndKey:(.*)", SubPat)
	if (FoundPos > 0)
		key = {%SubPat1%}
	if(key = "{BackSpace}")
		Send, {BS}
	else
	{
		SendLevel 1
		Send, % key
	}
return
