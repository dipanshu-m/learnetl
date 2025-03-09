-- SELECT
--     *
-- FROM
--     {{source('tpch', 'orders')}}

SELECT
    o_orderkey as orderkey,
    o_custkey as custkey,
    o_orderstatus as orderstatus,
    o_totalprice as totalprice,
    o_orderdate as orderdate,
FROM
    {{source('tpch', 'orders')}}