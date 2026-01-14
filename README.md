# instacart-order-history-tool

Export your Instacart order history with full item details to JSON, CSV, or text.

## Quick Start

```bash
pip install requests
./instacart-orders --session "YOUR_COOKIE_VALUE"
```

## Getting Your Session Cookie

1. Go to [instacart.com](https://instacart.com) in Chrome (make sure you're logged in)
2. Open DevTools: `Cmd+Option+I` (Mac) or `F12` (Windows)
3. Go to **Application** tab
4. In the left sidebar, expand **Cookies** → click **instacart.com**
5. Find `_instacart_session_id` in the list
6. Double-click the **Value** column to select it, then copy

## Usage

```bash
# Export all orders as JSON
./instacart-orders --session "COOKIE"

# Last 6 months only
./instacart-orders --session "COOKIE" --months 6

# Last 90 days
./instacart-orders --session "COOKIE" --days 90

# Since a specific date
./instacart-orders --session "COOKIE" --since 2024-01-01

# CSV format (good for Excel/Sheets)
./instacart-orders --session "COOKIE" --format csv

# Human-readable text
./instacart-orders --session "COOKIE" --format text

# Save to file
./instacart-orders --session "COOKIE" -o orders.json

# Quiet mode (no progress)
./instacart-orders --session "COOKIE" -q > orders.json
```

## Output Formats

### JSON (default)
```json
[
  {
    "id": "123456789",
    "status": "Complete",
    "total": 45.67,
    "created_at": "Jan 10, 2026,  8:31 AM",
    "deliveries": [
      {
        "retailer": "Costco",
        "items": [
          {"name": "Kirkland Organic Eggs", "quantity": 1, "size": "24 ct"}
        ]
      }
    ]
  }
]
```

### CSV
Flattened format with one row per item:
```
order_id,order_date,order_total,retailer,item_name,quantity,size,product_id
```

### Text
Human-readable summary of orders and items.

## Requirements

- Python 3.7+
- `requests` library

## Notes

- The session cookie expires periodically, so you may need to get a fresh one
- Instacart rate limits API requests; the tool handles this automatically
- Orders are returned newest first
