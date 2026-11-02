# Nasneem Khaleel – Portfolio & Resume

Responsive static portfolio website for Nasneem Khaleel.

## Stack
- HTML5
- CSS3 (custom semantic CSS)
- Vanilla JavaScript
- Lucide icons
- Google Fonts (Inter)
- Service Worker (PWA)
- GitHub Actions (CI/CD)

## Features
- Responsive layout
- Sticky navigation
- Mobile navigation
- Professional experience timeline
- Technical expertise cards
- Print / Save as PDF resume
- SEO and Open Graph metadata
- PWA (service worker, icons, manifest)
- Google Analytics 4
- Google Tag Manager
- Automated deployment to Vercel

## Run locally

Open `index.html` in a browser or use a local static server.

For example:

```bash
npm start
# or
python3 -m http.server 8080
```

Then visit http://localhost:8080.

## Before deployment
1. Your domain is configured as `nasneem-portfolio.vercel.app` in `robots.txt` and `sitemap.xml`. Change if deploying elsewhere.
2. Add an approved profile photo under `assets/images/profile/`.
3. Add a final PDF resume under `assets/documents/` if you want a direct PDF download.
4. Confirm the ELT Bridge-to-Work Program dates before adding it.
5. Review all resume content and contact details.
6. Replace the placeholder analytics IDs:
   - `GTM-XXXXXXX` in `index.html`, `cv.html`, and the GTM noscript iframe
   - `G-XXXXXXX` in `index.html` and `cv.html`
7. Add PWA icon files:
   - `assets/icons/icon-192.png` (192x192 PNG)
   - `assets/icons/icon-512.png` (512x512 PNG)
   - `assets/icons/icon-32.png` (32x32 PNG)
   - `assets/icons/icon-16.png` (16x16 PNG)
   - `assets/icons/apple-touch-icon.png` (180x180 PNG)
   - `assets/images/profile/og-image.png` (1200x630 PNG)
8. The service worker (`sw.js`) is registered automatically on both pages. To update, bump the `CACHE_NAME` in `sw.js`.

## GitHub Actions workflow

A CI/CD workflow is configured at `.github/workflows/deploy.yml`:

- **Push to `main` or `master`** → deploys to Vercel production (`--prod`)
- **Pull request** → deploys a preview build (`--preview`)
- **Manual trigger** via the Actions tab (`workflow_dispatch`)

### Required GitHub secrets
Add these repository secrets under Settings → Secrets and variables → Actions:

| Secret | Purpose |
|---|---|
| `VERCEL_TOKEN` | Vercel CLI auth token |
| `VERCEL_ORG_ID` | Your Vercel organization ID |
| `VERCEL_PROJECT_ID` | Your Vercel project ID |

### Vercel setup
1. Install Vercel CLI: `npm i -g vercel`
2. Log in: `vercel login`
3. Link project: `vercel link`
4. Add the secrets above from `vercel env ls` or the Vercel dashboard.

## Linting and auto-fix

Automated code quality checks are configured for CSS, HTML, and JavaScript:

| Command | Description |
|---|---|
| `npm run lint:css` | Stylelint with `--fix` (auto-corrects CSS issues) |
| `npm run lint:html` | HTMLhint (validates HTML structure) |
| `npm run lint:js` | ESLint with `--fix` (auto-corrects JS issues) |
| `npm run format` | Prettier (formats all source files) |
| `npm run lint` | Runs all three linters |

### Config files
- `.stylelintrc.json` — CSS rules (extends `stylelint-config-standard-scss`)
- `.eslintrc.cjs` — JavaScript rules (extends `eslint:recommended`)
- `.htmlhintrc` — HTML validation rules

### GitHub Actions
On every push, the CI workflow runs all linters with `--fix`, formats code, and auto-commits the fixes via `git-auto-commit-action`. This keeps the repository clean without manual intervention.

## Deployment
Can be deployed as a static website to GitHub Pages, Netlify or Vercel.

## License
Personal portfolio content. Obtain permission before reusing personal information.