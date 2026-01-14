# instacart-orders

Fetch your Instacart order history. One thing, done well.

No dependencies. Just Python 3 (pre-installed on macOS/Linux).

## Install

```bash
curl -o /usr/local/bin/instacart-orders https://raw.githubusercontent.com/mike-vincent/instacart-orders/master/instacart-orders
chmod +x /usr/local/bin/instacart-orders
```

Or clone:
```bash
git clone https://github.com/mike-vincent/instacart-orders.git
```

## Get Your Session Cookie

1. Log into [instacart.com](https://instacart.com)
2. DevTools (`Cmd+Option+I`) → Application → Cookies
3. Copy value of `_instacart_session_id`

## Run

```bash
instacart-orders --session "YOUR_COOKIE"
```

## Options

```
--session, -s    Session cookie (required)
--months N       Last N months
--days N         Last N days
--since DATE     Since YYYY-MM-DD
--format FMT     json (default), csv, or text
-o FILE          Output file
-q               Quiet
```

## What It Does

**Input:** Instacart session cookie

**Output:** Orders with item details (name, quantity, size, retailer)

## License

MIT
