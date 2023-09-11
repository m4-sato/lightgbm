# lightgbm

- TASK分解
  - step0:outlookmailの読み込み(添付のcsvファイルを読み込む)
  - step1:csvファイルデータクレンジング
  - step2:csvファイルデータをDBに格納
  - step3:DBからデータを取得
  - step4:API(LightGBM)にてデータを解析
  - step5:解析結果をDBに格納
  - step6:解析結果からメールの指示文を作成