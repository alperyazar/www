
# ayazar.com Source

[![GitHub License](https://img.shields.io/github/license/alperyazar/www.svg?style=flat)](https://creativecommons.org/licenses/by/4.0/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat)](http://makeapullrequest.com)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/alperyazar/www/full-check?label=Full%20Check)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/alperyazar/www/deploy?label=Deploy)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/alperyazar/www.svg)](https://github.com/alperyazar/www/graphs/commit-activity)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/alperyazar/www.svg)](https://github.com/alperyazar/www)
![Uptime Robot status](https://img.shields.io/uptimerobot/status/m784066757-5d6b061dfaf9531f911b85ca.svg)
[![Netlify Status](https://api.netlify.com/api/v1/badges/338d0494-8489-459d-81da-1a5cca25848f/deploy-status)](https://app.netlify.com/sites/draft-ayazar/deploys)
![Uptime Robot ratio (30 days)](https://img.shields.io/uptimerobot/ratio/m784066757-5d6b061dfaf9531f911b85ca.svg)

[https://www.ayazar.com](https://www.ayazar.com)

Source code of my website. If you wish you can contribute through pull request.

## Building Locally

Site is built with `Jekyll`. Jekyll is a Ruby program and we use Bundler as
dependency and package manager. The following steps should work on both Linux
and Windows. We haven't tried it on MacOS yet.

After installing Ruby which should also have `gem`. Then, install `bundler`.
Check out `gem` documentation for further options such as user vs system-wide
installation. **If you have already `bundler` installed you can skip this
command.**

```text
gem install bundler
```

then run

```text
bundle update
```

This will install all necessary components to build the site. You can run
`bundle update` whenever you want to update and use the latest gems.

You can serve locally the site while working on a new content or editing files.
To view locally modified the site run:

```text
bundle exec jekyll serve --livereload
```

By default, the server listens [http://localhost:4000](http://localhost:4000)
If you encounter any problem when building the site, retry by omitting
`--livereload` flag.

## License

[![GitHub License](https://img.shields.io/github/license/alperyazar/www.svg?style=flat)](https://creativecommons.org/licenses/by/4.0/)

SPDX-License-Identifier: CC-BY-4.0

This project is licensed under CC-BY-4.0 if otherwise stated.
Check [LICENSE](LICENSE) for further information.
