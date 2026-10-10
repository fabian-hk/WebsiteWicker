# SEO and content quality review

Reviewed on 10 October 2026. This is a German, single-page hobby portfolio. The Markdown files in `content/homepage` are resources of a headless bundle and supply sections of the homepage; they do not need separate canonical URLs, meta descriptions, or sitemap entries. Generated files under `docs` were left untouched.

## Content quality and E-E-A-T

The existing first-person explanation of weaving, portrait, original gallery, named owner, email, telephone, and postal address provide useful evidence of personal experience and accountability. The text remains focused on the actual hobby and on viewing or acquiring baskets by appointment.

The introduction now explicitly identifies the maker and location. More descriptive section headings, a short gallery introduction, photo-specific alternative text and lightbox captions, and links between the introduction, gallery, and contact section make the portfolio easier to understand. Contact details now include a telephone link and clear appointment instructions. Existing content and section order are preserved.

The photographs demonstrate the work more effectively than unsupported claims of expertise. The source contains no verified qualifications, awards, years of experience, customer reviews, or external reputation evidence; none were invented. Structured data therefore describes a `Person`, `WebSite`, and `WebPage`, without product offers, ratings, or an assumed storefront.

Possible future improvements require the owner's factual input: a brief explanation of their own process, verified background in weaving, and useful details for selected baskets such as dimensions and intended use. Gallery captions describe visible objects; the owner can refine any specialist terminology. External reputation cannot be created through template changes.

## On-page and technical changes

- Kept the descriptive homepage title and added explicit homepage front matter and an accurate description of the gallery, inquiries, and appointments.
- Shortened the site name used for social previews and website structured data.
- Kept one H1 and three section H2s; the decorative subtitle is now a paragraph with its existing styling.
- Preserved `#herzlich-willkommen`, `#bilder-galerie`, and `#kontakt` anchors and navigation labels.
- Added a self-referencing HTTPS canonical URL and crawlable `robots.txt` linking to the existing homepage-only sitemap.
- Added homepage JSON-LD using the existing identity and contact information; excluded it from the error page and marked that page `noindex`.
- Removed the redundant title meta tag and the long keywords meta tag.
- Added alternative text, intrinsic dimensions, lazy loading, and asynchronous decoding for the portrait and all 36 gallery images. Gallery descriptions live in `data/gallery.yaml`; add entries there when adding photos.
- Ensured the original social-preview image asset is published and added its dimensions and alternative text.
- Removed the duplicate viewport that disabled zoom. Removed the second jQuery download and loaded Fancybox after the theme's jQuery bundle.
- Kept the gallery CSS and moved it from the shortcode into the existing custom stylesheet. No colors or overall layout were redesigned.

Local template overrides in `layouts` keep the theme submodule unchanged. Review these overrides when upgrading the theme.

## Validation and deployment

`hugo --destination /tmp/wicker-seo-build --cacheDir /tmp/wicker-hugo-cache --printPathWarnings` succeeded with Hugo v0.167.0 extended. Only the theme's pre-existing Sass `@import` deprecation warnings remain.

Generated HTML checks passed for metadata, canonical URL, a single zoom-friendly viewport, heading counts, all internal anchor targets, all local link and asset targets, 37 described images, published social-preview images, JSON-LD syntax and graph identities, sitemap URLs, robots output, 404 noindex, and script ordering. `git diff --check` passed. These are build and static-output checks; browser interaction, live server responses, Core Web Vitals, and Google indexing were not measured.

Deploy by building the updated source into the hosting destination. After deployment, submit `https://cdhauck.de/sitemap.xml` in Search Console, inspect the homepage URL, and monitor indexing and search performance. Confirm the host serves missing URLs with HTTP 404 and redirects alternate host/protocol URLs to the configured HTTPS origin. Templates alone do not set hosting redirects or HTTP status codes.

## Guidance used

- [Google: helpful, reliable, people-first content and E-E-A-T](https://developers.google.com/search/docs/fundamentals/creating-helpful-content)
- [Google Search Quality Evaluator Guidelines](https://static.googleusercontent.com/media/guidelines.raterhub.com/en//searchqualityevaluatorguidelines.pdf)
- [Google: title links](https://developers.google.com/search/docs/appearance/title-link), [snippets](https://developers.google.com/search/docs/appearance/snippet), and [image SEO](https://developers.google.com/search/docs/appearance/google-images)
- [Google: canonical URLs](https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls) and [structured data policies](https://developers.google.com/search/docs/appearance/structured-data/sd-policies)

E-E-A-T is a quality assessment framework, not a standalone ranking score. These changes improve clarity, accessibility, and technical signals; rankings and rich results are not guaranteed.
