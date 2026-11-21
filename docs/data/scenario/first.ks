*start

[title name="締切前夜 ～実験レポートを提出せよ～"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]
[eval exp="f.point = 0"]

「締切前夜 ～実験レポートを提出せよ～」[l][r]
クリックで始まります。[l][cm]

[bg storage=room_night.jpg time=500]

時刻は22:00。[l][r]
明日の朝9:00は、実験レポートの提出締切だ。[l][r]
……そして、レポートはまだ1行も書いていない。[l][cm]

さて、どうする？[r]

[link target=*q1_write] →今すぐ書き始める [endlink][r]
[link target=*q1_video] →動画を1本だけ見てから書く [endlink][r]
[s]

*q1_write
[cm]
[eval exp="f.point = f.point + 1"]
パソコンを開き、Wordに「目的」と打ち込んだ。[l][r]
偉い。とても偉い。[l][cm]
[jump target=*q2]

*q1_video
[cm]
「1本だけ」のはずが、気づけば関連動画を5本見ていた。[l][r]
時刻は23:30。背中に冷たい汗が流れる。[l][cm]
[jump target=*q2]

*q2
[bg storage=room_midnight.jpg time=500]
時刻は0:00。[l][r]
実験データの解析でつまずいた。グラフが教科書と全然違う形になる。[l][cm]

どうする？[r]

[link target=*q2_book] →教科書と実験書を読み直す [endlink][r]
[link target=*q2_friend] →同じ班の友人に質問する [endlink][r]
[link target=*q2_fake] →それっぽいデータに書き換える [endlink][r]
[s]

*q2_book
[cm]
[eval exp="f.point = f.point + 1"]
実験書を読み直すと、単位の換算を間違えていたことに気づいた。[l][r]
グラフがきれいな形になった！[l][cm]
[jump target=*q3]

*q2_friend
[cm]
[eval exp="f.point = f.point + 1"]
友人「あー、それ単位がmmのままじゃない？」[l][r]
持つべきものは班員である。[l][cm]
[jump target=*q3]

*q2_fake
[cm]
[bg storage=bad.jpg time=500]
グラフは見事に理論通りになった。……なりすぎた。[l][r]
後日、教員に呼び出された。「このデータ、測定値と合わないね？」[r]
データの改ざんは研究不正である。[r]

【 BAD END：研究不正 】[l][cm]

[jump target=*start]

*q3
[bg storage=room_late.jpg time=500]
時刻は3:00。[l][r]
考察まであと少し。しかし、まぶたが鉛のように重い。[l][cm]

どうする？[r]

[link target=*q3_nap] →アラームをかけて30分だけ仮眠する [endlink][r]
[link target=*q3_coffee] →コーヒーを飲んで書き続ける [endlink][r]
[link target=*q3_sleep] →もう無理。布団に入る [endlink][r]
[s]

*q3_nap
[cm]
[eval exp="f.point = f.point + 1"]
30分後、アラームで目が覚めた。頭がすっきりしている。[l][r]
考察がすらすら書ける！[l][cm]
[jump target=*result]

*q3_coffee
[cm]
コーヒーで目は覚めたが、文章が支離滅裂になってきた。[l][r]
「よって、電圧は気持ちである。」……何を書いているんだ。[l][cm]
[jump target=*result]

*q3_sleep
[cm]
[bg storage=bad.jpg time=500]
「5分だけ……」[l][r]
目が覚めると、時計の針は10:00を指していた。[r]
締切は1時間前に過ぎている。[r]

【 BAD END：寝坊 】[l][cm]

[jump target=*start]

*result
[bg storage=morning.jpg time=500]
朝7:00。なんとかレポートが完成した。[l][r]
[bg storage=campus.jpg time=500]
8:55、大学に到着。提出ボックスにレポートを入れた。[l][cm]

今回の行動ポイント：[emb exp="f.point"] / 3[l][r]

[if exp="f.point >= 3"]
数日後、レポートが返却された。評価は「A」！[r]
コメント欄には「考察がよく書けています」と書かれていた。[r]
【 GOOD END：計画的な学生 】[l][cm]
[elsif exp="f.point == 2"]
数日後、レポートが返却された。評価は「B」。[r]
「グラフは良いが考察が浅い」とのこと。次はもっと早く始めよう。[r]
【 NORMAL END：まずまずの出来 】[l][cm]
[else]
数日後、レポートが返却された。赤ペンで「再提出」と書かれている。[r]
……次の締切は、明日の朝9:00だ。[r]
【 NORMAL END：再提出ループ 】[l][cm]
[endif]

[jump target=*start]
