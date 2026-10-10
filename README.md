Headline color: #1b5e20

Theme: https://themes.gohugo.io/hugo-scroll/

# Hugo Commands

- Start dev server: ``hugo server -D``
- Compile for deployment: ``hugo -d docs/``
- Verify without changing the rendered site: ``hugo --destination /tmp/wicker-seo-build --cacheDir /tmp/wicker-hugo-cache``

See [SEO.md](SEO.md) for the SEO review, validation results, and maintenance notes. Production builds omit drafts; use `-D` only when previewing them.

# Add Images

1. Delete all images  in ``static/img/gallery``
2. Place original files in ``static/img/gallery``
3. Run script ``scripts/generate_thumbs.sh``

## Create Favicon.ico

```bash
convert static/img/favicon.png \
  -background transparent \
  -gravity center \
  -extent 100x100 \
  -define icon:auto-resize=64,48,32,16 \
  assets/img/favicon.ico
```
