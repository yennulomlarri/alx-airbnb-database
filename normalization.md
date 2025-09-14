# Database Normalization Process

## Applied Normalization Principles

### First Normal Form (1NF)
- Eliminated repeating groups by creating separate tables for each entity
- Ensured all columns contain atomic, indivisible values
- Defined primary keys for all tables

### Second Normal Form (2NF)
- All tables satisfy 1NF requirements
- Removed partial dependencies by ensuring all non-key attributes fully depend on the entire primary key
- Created junction tables for many-to-many relationships

### Third Normal Form (3NF)
- All tables satisfy 2NF requirements
- Eliminated transitive dependencies where non-key attributes depended on other non-key attributes
- For example, instead of storing host information in the properties table, we reference the users table via host_id

### Specific Design Decisions:
- Created separate tables for each entity (Users, Properties, Bookings, etc.)
- Used foreign keys to establish relationships between tables
- Avoided storing calculated values (e.g., total_price is stored but could be calculated)
- Ensured each table serves a single purpose
- Added appropriate constraints (NOT NULL, UNIQUE, etc.) to maintain data integrity
