ALTER TABLE mdb2_sf1_part
    ADD CONSTRAINT part_kpey
        PRIMARY KEY (p_partkey);

ALTER TABLE mdb2_sf1_supplier
    ADD CONSTRAINT supplier_pkey
        PRIMARY KEY (s_suppkey);

ALTER TABLE mdb2_sf1_partsupp
    ADD CONSTRAINT partsupp_pkey
        PRIMARY KEY (ps_partkey, ps_suppkey);

ALTER TABLE mdb2_sf1_customer
    ADD CONSTRAINT customer_pkey
        PRIMARY KEY (c_custkey);

ALTER TABLE mdb2_sf1_orders
    ADD CONSTRAINT orders_pkey
        PRIMARY KEY (o_orderkey);

ALTER TABLE mdb2_sf1_lineitem
    ADD CONSTRAINT lineitem_pkey
        PRIMARY KEY (l_orderkey, l_linenumber);

ALTER TABLE mdb2_sf1_nation
    ADD CONSTRAINT nation_pkey
        PRIMARY KEY (n_nationkey);

ALTER TABLE mdb2_sf1_region
    ADD CONSTRAINT region_pkey
        PRIMARY KEY (r_regionkey);