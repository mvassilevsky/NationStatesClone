# Schema Information

## nations
column name    | data type | details
---------------|-----------|-----------------------
id             | integer   | not null, primary key
password_digest| string    | not null
session_token  | string    | not null
name           | string    | not null, unique
ec_freedom     | integer   | not null
soc_freedom    | integer   | not null
pol_freedom    | integer   | not null
currency       | string    | not null
animal         | string    | not null
population     | integer   | not null
leader_title   | string    | not null
tax_rate       | integer   | not null
ecosystem      | integer   | not null
motto          | string    |
flag_url       | string    |

## nation_issues
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
issue_id    | integer   | not null, foreign key (references issues)
nation_id   | integer   | not null, foreign key (references nations)

## issues
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
body        | string    | not null

## issue_options
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
issue_id    | integer   | not null, foreign key (references issues)
body        | string    | not null
ec_freedom  | integer   | not null
soc_freedom | integer   | not null
pol_freedom | integer   | not null
tax_rate    | integer   | not null
ecosystem   | integer   | not null
result_txt  | string    | not null

## nation_stat
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
nation_id   | integer   | not null, foreign key (references nations)
ec_freedom  | integer   | not null
soc_freedom | integer   | not null
pol_freedom | integer   | not null
