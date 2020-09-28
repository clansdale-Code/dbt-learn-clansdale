select 
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as Payment_Method,
    STATUS,
    AMOUNT / 100 as amount,
    CREATED
 from raw.stripe.payment
 where STATUS <> 'fail'
 order by ORDERID