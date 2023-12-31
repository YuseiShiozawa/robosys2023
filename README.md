# plusコマンド

[![test](https://github.com/YuseiShiozawa/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/YuseiShiozawa/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ数値の合計,平均を求める. その後,ランダムにうんこ(全3種)を1つ出力する「うんこ占い」を行う.

* 実行例
```bash
$ seq 10 | ./plus
```

* 実行結果
```bash
合計:55, 平均:5.5
うんこ占い:MEGAうんこ
```

## インストール手順
下記の通りクローンし,リポジトリ内にてplusに実行権限を付与させてから実行してください.
```bash
$ git clone https://github.com/YuseiShiozawa/robosys2023.git
$ cd robosys2023
$ chmod +x plus
```

## 必要なソフトウェア

* Python
  * テスト済みバージョン: 3.7～3.10

## テスト環境

* Ubuntu 20.04

## 権利関係

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
   * [ryuichiueda/my_slides/robosys_2022/lesson4](https://ryuichiueda.github.io/my_slides/robosys_2022/lesson4.html#/)
* © 2023 Yusei Shiozawa
