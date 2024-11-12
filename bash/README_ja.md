# bash
個人的な bash 設定

## 前提条件
以下のコマンドを実行して git-prompt.sh をローカル環境にダウンロードしていること
```bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
```

## 設定方法
ユーザーのローカル環境に以下のファイルを格納。
既存のファイルが存在する場合は上書きをするのではなく、必要に応じて内容を追記すること。
```bash
~/ (ホームディレクトリ)
├── .bash_profile
└── .bashrc
```