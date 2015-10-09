# timecard
簡易タイムカードプログラムです。

仕事開始時にwork_start.shを、終了時にwork_end.shを実行することで、タイムカード(log.txt)を記録できます。
仕事中にwork_comment.shを実行して、作業内容をメモすることができます。

各スクリプトを実行すると、log.txtがgit commitされ、特定のフォルダにlog.txtの上書きコピーを作成します。
初期状態では~/Dropbox/timecard/にコピーが作成されます。


convert.cppはlog.txtをgtimereportっぽく整形してくれます。
const string Project="Tumoi Yorozu";
の行をそれぞれ自分の名前に変更して、
g++ -std=c++11 convert.cpp -o convert.out
を実行してコンパイルして、
convert.out < log.txt > out.tsv
のように実行してＴＳＶを作成してください。
