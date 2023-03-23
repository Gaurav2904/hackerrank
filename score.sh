#!/bin/bash

echo "This custom script can run any bash command, and perform tests."
echo "It needs to only output on 1 line in the format 'FS_SCORE:xx%', where xx is the percentage score for the solution."

# Add your bash commands and tests here.

score=70

echo "FS_SCORE:${score}%"
#!/bin/bash

# Set up environment variables and paths.
# Replace these with the correct paths and credentials for your Hive installation.
HIVE_BIN_PATH="/path/to/hive/bin"
HIVE_USERNAME="username"
HIVE_PASSWORD="password"
HIVE_SERVER="http://ip-10-1-1-204.ap-south-1.compute.internal:8889/"
HIVE_PORT="hive.server2.thrift.port=10000"

# Export the environment variables.
export HIVE_BIN_PATH
export HIVE_USERNAME
export HIVE_PASSWORD
export HIVE_SERVER
export HIVE_PORT

# Define the function to execute Hive queries.
run_hive_query() {
  query="$1"
  ${HIVE_BIN_PATH}/hive -e "SET mapred.job.queue.name=myqueue; SET hive.execution.engine=tez; ${query}"
}

# Replace these with your actual data file paths.
CUSTOMERS_CSV="customers.csv"
PRODUCTS_CSV="products.csv"
TRANSACTIONS_CSV="transactions.csv"

# Define the queries to create external tables, load data, and calculate scores.
CREATE_CUSTOMERS_TABLE_QUERY="CREATE EXTERNAL TABLE ...;"
LOAD_CUSTOMERS_DATA_QUERY="LOAD DATA ...;"
CREATE_PRODUCTS_TABLE_QUERY="CREATE EXTERNAL TABLE ...;"
LOAD_PRODUCTS_DATA_QUERY="LOAD DATA ...;"
CREATE_TRANSACTIONS_TABLE_QUERY="CREATE EXTERNAL TABLE ...;"
LOAD_TRANSACTIONS_DATA_QUERY="LOAD DATA ...;"
CALCULATE_SCORES_QUERY="SELECT ...;"

# Execute the queries.
run_hive_query "${CREATE_CUSTOMERS_TABLE_QUERY}"
run_hive_query "${LOAD_CUSTOMERS_DATA_QUERY}"
run_hive_query "${CREATE_PRODUCTS_TABLE_QUERY}"
run_hive_query "${LOAD_PRODUCTS_DATA_QUERY}"
run_hive_query "${CREATE_TRANSACTIONS_TABLE_QUERY}"
run_hive_query "${LOAD_TRANSACTIONS_DATA_QUERY}"

# Calculate the score based on the problem requirements.
# Note: You need to adapt this query and logic to match the specific scoring criteria for the Hive Problem.
score=$(run_hive_query "${CALCULATE_SCORES_QUERY}")

echo "FS_SCORE:${score}%"
