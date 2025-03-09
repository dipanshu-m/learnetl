select
    lineitem.order_item_key,
    lineitem.partkey,
    lineitem.linenumber,
    ord.orderkey,
    ord.custkey,
    ord.orderdate
from
    {{ ref('stg_tpch_order') }} as ord
join
    {{ ref('stg_tpch_lineitems') }} as lineitem
    on ord.orderkey = lineitem.orderkey
order by
    ord.orderdate ASC
