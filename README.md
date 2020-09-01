# Vim 正體中文社群網站

討論及分享 Vim 相關技巧的小圈圈，請儘量使用正體中文發言，詳情請參考 [http://www.vim.tw](http://www.vim.tw)。

聯繫管道：

* [Telegram 群組聊天室](https://telegram.me/vim_tw)
* [Mail list](https://groups.google.com/forum/?fromgroups#!forum/vim-taiwan)
* IRC: vim-tw@irc.freenode.net

## 如何在本機 (localhost) 建置環境

*vim-tw.github.io* 使用 github-pages (Jekll) framework 進行建置，詳請請參考  [Using Jekyll with Pages | GitHub Pages Basics](https://help.github.com/articles/using-jekyll-with-pages/) 一文。

1. 安裝 Ruby 套件。

    ```
    $ #gem install --no-ri --no-doc bundler github-pages
    $ make install
    ```

2. 執行 server。

    ```
    $ #bundle exec jekyll serve
    $ make run
    Configuration file: /Users/vimmer/vcs/vim-tw.github.io/_config.yml
                Source: /Users/vimmer/vcs/vim-tw.github.io
           Destination: /Users/vimmer/vcs/vim-tw.github.io/_site
          Generating...
                        done.
     Auto-regeneration: enabled for '/Users/vimmer/vcs/vim-tw.github.io'
    Configuration file: /Users/vimmer/vcs/vim-tw.github.io/_config.yml
        Server address: http://0.0.0.0:4000/
      Server running... press ctrl-c to stop.
    ```

### 程式架構 (Architecture)

若需新增其它頁面，只需於根目錄下新增 foo.md 或 foo.html 即可，(README.md 例外，請參考 _config.yml 裡的第一行 `exclude: [README.md]`)。

```
$ tree
.
├── CNAME
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── Makefile
├── README.md
├── _config.yml
├── _includes
│   ├── footer.html
│   └── header.html
├── _layouts
│   └── default.html
├── _sass
│   └── variable.scss
├── _site
│   ├── CNAME
│   ├── Gemfile
│   ├── Gemfile.lock
│   ├── LICENSE
│   ├── index.html
│   ├── js
│   │   └── fetch.js
│   └── style.css
├── index.md
├── js
│   └── fetch.js
└── style.scss

6 directories, 21 files
```

## 授權 (LICENSE)

Copyleft (ɔ) from 2015-2020 Vim Taiwan CC BY-NC 2.5 TW.
