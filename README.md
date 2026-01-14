# instacart-scraper

A command-line tool for scraping your Instacart order history.

## Install

```bash
brew tap mike-vincent/instacart-scraper
brew install instacart-scraper
```

## Get your session cookie

1. Log into instacart.com
2. DevTools (Cmd+Option+I) → Application → Cookies
3. Copy value of `_instacart_session_id`

## Usage

```bash
instacart-scraper --session "YOUR_SESSION_COOKIE"
instacart-scraper --session "COOKIE" --months 6 -f csv -o orders.csv
```

## Options

```
-s, --session    Instacart session cookie from browser (required)
--months N       Last N months
--days N         Last N days
--since DATE     Since YYYY-MM-DD
-f, --format     json, csv, or text
-o, --output     Output file
-q, --quiet      Quiet mode
```

## Output

JSON, CSV, or text with order dates, totals, retailers, and full item details.

## Author

[Mike Vincent](https://www.mikevincent.dev), Los Angeles

## License

MIT
