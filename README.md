# family-site

Seplak family holiday "card", happy holidays!

https://holidays.theseplaks.com

I used [Hugo](https://gohugo.io/) to generate the frontend, credit to Jan Raasch for the [Hugo Scroll](https://github.com/janraasch/hugo-scroll) theme.

## Development

Simply run:

    $ cd site/ && hugo server -D

And view site at http://localhost:1313/.

## Generate static files

    $ cd site && hugo -D

This will generate all of the static files and populate the `public/` directory.

## Deployment

This is an AWS S3, CDN, Route53 static site. To set up the infrastructure:

    $ terraform plan/apply

To just deploy the static files (deployent set up in `/site/config.toml`):

    $ hudo deploy

This will upload the new files to S3 and invalidate the CDN cache.
