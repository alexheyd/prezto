---
layout: post
title:  "%TITLE%"
date:   %DATE% %TIMESTAMP%
categories: blog
comments: true
---

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, repudiandae, sit, minus consequuntur ratione quis vitae corporis expedita quod officiis earum iste facere amet officia libero consequatur eius. Harum, necessitatibus?

```bash
$ ls **/*.js
```

- [10 zsh tricks you may not know...](http://chneukirchen.org/blog/archive/2008/02/10-zsh-tricks-you-may-not-know.html)

{% highlight bash linenos %}

# Clone the repo into your home folder
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto

# Set up Prezto's default config and create symlinks in home folder
$ setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Change your default shell to ZSH
$ chsh -s /bin/zsh

{% endhighlight %}