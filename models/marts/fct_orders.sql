with
    customers as (
        select *
        from {{ref("dim_customers")}}
    )

    , products as (
        select *
        from {{ref("dim_products")}}
    )

    , suppliers as (
        select *
        from {{ref("dim_suppliers")}}
    )
    , categories as (
        select *
        from {{ref("dim_categories")}}
    )
    
    , orders as (
        select *
        from {{ref("int_order_details")}}
    )

    select
        customers.sk_customer
        , orders.*
    from orders
    left join customers on orders.customer_id = customers.customer_id