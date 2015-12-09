# Vim 正體中文社群網站

討論及分享 Vim 相關技巧的小圈圈，請儘量使用正體中文發言，詳情請參考 [http://vim-tw.github.io](http://vim-tw.github.io)。

聯繫管道：

* Telegram 群組聊天室: [https://telegram.me/joinchat/CPYvygKUxvnd8xrGsW26MA](https://telegram.me/joinchat/CPYvygKUxvnd8xrGsW26MA)
* Mail list: [https://groups.google.com/forum/?fromgroups#!forum/vim-taiwan](https://groups.google.com/forum/?fromgroups#!forum/vim-taiwan)
* IRC: vim-tw@irc.freenode.net

## 如何在本機 (localhost) 建置 vim-tw.github.io

1. 安裝 Ruby 套件。

        $ gem install --no-ri --no-doc bundler github-pages

2. 執行 server。

        $ jekyll serve
        Configuration file: /Users/vimmer/vcs/vim-tw.github.io/_config.yml
                    Source: /Users/vimmer/vcs/vim-tw.github.io
               Destination: /Users/vimmer/vcs/vim-tw.github.io/_site
              Generating...
                            done.
         Auto-regeneration: enabled for '/Users/vimmer/vcs/vim-tw.github.io'
        Configuration file: /Users/vimmer/vcs/vim-tw.github.io/_config.yml
            Server address: http://0.0.0.0:4000/
          Server running... press ctrl-c to stop.

### 程式架構 (Architecture)

若需新增其它頁面，只需於根目錄下新增 foo.md 或 foo.html 即可，(README.md 例外，請參考 _config.yml 裡的第一行 `exclude: [README.md]`)。

    $ tree
    .
    ├── LICENSE
    ├── README.md
    ├── _config.yml
    ├── _layouts
    │   └── default.html
    ├── _sass
    │   └── variable.scss
    ├── _site
    │   ├── LICENSE
    │   ├── index.html
    │   └── style.css
    ├── index.md
    └── style.scss
    
    3 directories, 10 files

## 授權 (LICENSE)

Coypleft (ɔ) from 2015 Vim Taiwan CC BY-NC 2.5 TW.
