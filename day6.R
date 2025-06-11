# Install the RMySQL package (only needs to be done once)
install.packages("RMySQL")

# Load the RMySQL library to enable MySQL database connections
library("RMySQL")

# Establish a connection to the MySQL database
conn = dbConnect(MySQL(),
                 username = "root",         # MySQL username
                 password = "password",     # MySQL password
                 host = "localhost",        # Server address (local machine)
                 port = 3306,               # MySQL default port
                 dbname = "sales"           # Name of the database to connect to
)

# List all tables available in the 'sales' database
dbListTables(conn)

# List all fields (columns) in the 'customers' table
dbListFields(conn, "customers")

# Execute SQL query to fetch all data from the 'customers' table
customer_data = dbGetQuery(conn, "SELECT * FROM customers")

# View the fetched data in a spreadsheet-like viewer
View(customer_data)
