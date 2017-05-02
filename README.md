to_do_test=# \d tasks
            Table "public.tasks"
   Column    |       Type        | Modifiers
-------------+-------------------+-----------
 due_date    | character varying |
 description | character varying |
 list_id     | integer           |

 to_do_test=# CREATE TABLE tasks (due_date varchar, description varchar);
 to_do_test=# ALTER TABLE tasks ADD list_id int;

 to_do_test=# \d lists
                               Table "public.lists"
  Column |       Type        |                     Modifiers                      
 --------+-------------------+----------------------------------------------------
  id     | integer           | not null default nextval('lists_id_seq'::regclass)
  name   | character varying |

  to_do_test=# CREATE TABLE lists (name varchar);
  to_do_test=# ALTER TABLE lists ADD id int;
