f
========================

bashで、お気に入りに登録済みのディレクトリに一発で移動する。

# 使い方

## f --add ディレクトリの登録

```bash
~     $ cd ~/src
~/src $ f --add # カレントディレクトリを登録する。
input abbr name. if you skip, it will be src> # ディレクトリの省略名を登録する。デフォルトはそのディレクトリ名
~/src $ f --add ~/Documents # 指定したディレクトリを登録する。
input abbr name. if you skip, it will be Documents> 
```

## f 登録済みディレクトリに移動

```bash
~ $ f
0:      src: ~/src/
1: Documets: ~/Documents
select a path > 1 #  run `pushd ~/Documents`
~/Documents $

f Do # タブを押すとディレクトリ名を補完する

~/src $ f s # If you press tab key, f complete s
scripts src
~/src $ f sc # If you press tab key, sc becomes scripts
```
