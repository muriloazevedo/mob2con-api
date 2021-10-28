# README

Examples endpoints:

Create customer

```curl
curl --location --request POST 'http://localhost:3000/v1/customers' \
--header 'Content-Type: application/json' \
--data-raw '{
    "customer": {
        "name": "murilo",
        "email": "muriloazevedo338@gmail.com"
    }
}'
```

Create order
```curl
curl --location --request POST 'http://localhost:3000/v1/orders' \
--header 'Content-Type: application/json' \
--data-raw '{
    "order": {
        "total_amount" : 1200,
        "customer_id" : "ba8d0101-e6c3-4e46-866e-202715f3bb02"
    }
}'
```
