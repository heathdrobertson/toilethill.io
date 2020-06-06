---
permalink: /notes/jekyll
title: "Jekyll"
excerpt: "Jekyll website processes and tools to remember."
toc_label: "Jekyll TOC"
header:
    teaser: /assets/images/jekyll_teaser_image.png
    overlay_color: "#616261"
---
## Notes

## Debugging

## Testing

## Code Snipets

## Development Environment

```bash
docker run --rm --volumes-from=nix -it -v $(pwd):/home -w /home -p 4000:4000 nixos/nix nix-shell post.nix
```

<script src="https://gist.github.com/heathdrobertson/67601264548a648a6299c85f496decf3.js"></script>


## Reference

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].
### Tools
* [HTML to Markdown] Don't leave home without it.


### Links

- [Sample Markdown Files](https://github.com/mmistakes/minimal-mistakes/tree/master/docs)
- [Site Configuration](https://mmistakes.github.io/minimal-mistakes/docs/configuration/)
- [_config.yml example](https://github.com/mmistakes/minimal-mistakes/blob/master/_config.yml)
- [Font Awsome Icons](https://fontawesome.com/icons?d=gallery)
- [The internet’s source of freely useable images.](https://unsplash.com)


[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
[HTML to Markdown]: https://www.browserling.com/tools/html-to-markdown
