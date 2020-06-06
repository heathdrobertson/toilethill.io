---
permalink: /notes/github
title: "GitHub"
excerpt: "GitHub tools and configurations."
toc_label: "GitHub TOC"
header:
    teaser: /assets/images/github_teaser_image.png
    overlay_color: "#616261"
---

## Git Configuration

### HTTPS or SSL?
- [Which remote URL should I use?](https://help.github.com/en/github/using-git/which-remote-url-should-i-use)

###  HTTPS Password
- [Caching your GitHub password in Git](https://help.github.com/en/github/using-git/caching-your-github-password-in-git)

### Config Files

- [Customizing Git - Git Configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
    - [.gitconfig](https://git-scm.com/docs/git-config)
- [Git Tools - Credential Storage](https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage)
    - [.git-credential](https://git-scm.com/docs/git-credential)
- [Commit Template .gitmessage](https://thoughtbot.com/blog/5-useful-tips-for-a-better-commit-message)

#### Config error
- After moving config files to different directory
- Fixing this error ```git: 'credential---file=~/.git-credentials' is not a git command. See 'git --help'.```
- ```git config --unset credential.helper``` you may need to add the ```--global``` flag.
- To check your config settings ```git config --list```
- To find which helpers you have ```git help -a | grep credential-```
- Point to your hellper ```git config --global credential.helper <helper-name>``` 

## GitHub Configuration

### GitHub Pages

### Custom Domains
- [Managing a custom domain for your GitHub Pages site](https://help.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-a-records-with-your-dns-provider)

- Configure DNS A records to point at naked/apex domains e.g. toilethill.io
- CNAME Records point to subdomains like www.toilethill.io
- To list the current ip addresses your domain points to:
```bash
dig toilethill.io +noall +answer
``

