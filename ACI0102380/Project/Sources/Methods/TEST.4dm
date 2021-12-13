//%attributes = {}
//all pass 19 R3
//1,3,9,10 fail in 19.1

ASSERT:C1129(0=Compare strings:C1756("だ"; "ﾀﾞ"; sk strict:K86:4 | sk width insensitive:K86:9 | sk kana insensitive:K86:8); "#1")
ASSERT:C1129(-1=Compare strings:C1756("だ"; "ﾀﾞ"; sk strict:K86:4 | sk width insensitive:K86:9))  // kana is different
ASSERT:C1129(0=Compare strings:C1756("だ"; "ﾀﾞ"; sk strict:K86:4 | sk kana insensitive:K86:8); "#3")  // automatically width insensitive?
ASSERT:C1129(1=Compare strings:C1756("ダ"; "ﾀ"; sk strict:K86:4 | sk kana insensitive:K86:8))  // diacritically different
ASSERT:C1129(0=Compare strings:C1756("ダ"; "ﾀﾞ"; sk strict:K86:4 | sk kana insensitive:K86:8))  // automatically width insensitive?
ASSERT:C1129(0=Compare strings:C1756("タ"; "ﾀ"; sk strict:K86:4 | sk kana insensitive:K86:8))  // automatically width insensitive?
ASSERT:C1129(-1=Compare strings:C1756("タ"; "ﾀﾞ"; sk strict:K86:4 | sk kana insensitive:K86:8))  // diacritically different
ASSERT:C1129(1=Compare strings:C1756("だ"; "ﾀ"; sk strict:K86:4 | sk kana insensitive:K86:8))  // diacritically different
ASSERT:C1129(0=Compare strings:C1756("だ"; "ﾀﾞ"; sk strict:K86:4 | sk kana insensitive:K86:8); "#9")  // automatically width insensitive?
ASSERT:C1129(0=Compare strings:C1756("た"; "ﾀ"; sk strict:K86:4 | sk kana insensitive:K86:8); "#10")  // automatically width insensitive?
ASSERT:C1129(-1=Compare strings:C1756("た"; "ﾀﾞ"; sk strict:K86:4 | sk kana insensitive:K86:8))  // diacritically different
