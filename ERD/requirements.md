# ER Diagram Requirements Documentation

## Entities Included:
- Users: Store host and guest information
- Properties: Listings available for booking
- Bookings: Reservation records
- Payments: Transaction records
- Reviews: Guest feedback system
- Messages: Communication between users

## Relationships:
- One-to-Many: Users to Properties (host relationship)
- One-to-Many: Users to Bookings (guest relationship)
- One-to-Many: Properties to Bookings
- One-to-One: Bookings to Payments
- One-to-One: Bookings to Reviews
- Many-to-Many: Users to Users through Messages

## Design Decisions:
- Used surrogate keys (auto-increment IDs) for all tables
- Included created_at/updated_at timestamps for auditing
- Added status fields for bookings and payments to track lifecycle
- Normalized design to reduce data redundancy
