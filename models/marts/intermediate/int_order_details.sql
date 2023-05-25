with
    order_details as (
        select *
        from {{ref("stg_order_details")}}
    )

    , orders as (
        select *
        from {{ref("stg_orders")}}
    )

    select
        order_details.order_id as order_id_details
        , order_details.product_id
        , order_details.unit_price
        , order_details.quantity
        , order_details.discount
        , orders.*
    from order_details
    left join orders on order_details.order_id = orders.order_id