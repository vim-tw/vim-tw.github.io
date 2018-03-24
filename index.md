---
---

# Vim 正體中文社群

討論及分享 Vim 相關技巧的小圈圈，請儘量使用正體中文發言，謝謝。

## 聯繫管道

- [Telegram 群組聊天室](https://telegram.me/vim_tw){:target="_blank"}
- [AMA 討論區](https://github.com/vim-tw/ama){:target="_blank"}
- [Mail list](https://groups.google.com/forum/?fromgroups#!forum/vim-taiwan){:target="_blank"}
- IRC: vim-tw@irc.freenode.net

## 相關連結

- [Facebook 社團](https://www.facebook.com/groups/vim.tw/){:target="_blank"}
- [Vim Taiwan @ GitHub](https://github.com/vim-tw){:target="_blank"}
- [@be&#95;vimmer&#95;tw](https://twitter.com/be_vimmer_tw){:target="_blank"}
- [Vim 推廣貼紙](https://gist.github.com/chusiang/b608909bccff6ed62eb7){:target="_blank"}

## 如有 Vim 相關問題，歡迎至 <a href='https://github.com/vim-tw/ama/issues' target='_blank'>Ask me anything (AMA)</a> 提問

<ul id="amas"> </ul>

<script>
  fetch('https://api.github.com/repos/vim-tw/ama/issues').then(function(response) {
    return response.json();
  })
  .then(function (amas) {
      var content = '';
      amas.forEach(function(ama, index, array) {
          if (ama.pull_request !== undefined){return;}
          content += `<li><a href="${ama.html_url}">${ama.title}</a> <small>from ${(new Date(ama.created_at).toLocaleString())}</small></li>`;
      });
      return content;
  })
  .catch(function (content) {
      return "<p>請點選上方連結以觀看AMA！</p>";
  })
  .then(function (content) {
      document.getElementById('amas').innerHTML += content;
  });
</script>

## 友站連結

- [Emacs 台灣社群](https://emacser.tw){:target="_blank"}
- [Linux 台灣社群](https://www.linux.org.tw){:target="_blank"}
