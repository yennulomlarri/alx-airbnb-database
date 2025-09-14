-- Sample data for Airbnb database
USE airbnb_db;

-- Insert sample users
INSERT INTO users (email, password_hash, first_name, last_name) VALUES
('john.doe@example.com', 'hashed_password_1', 'John', 'Doe'),
('jane.smith@example.com', 'hashed_password_2', 'Jane', 'Smith'),
('mike.johnson@example.com', 'hashed_password_3', 'Mike', 'Johnson'),
('sarah.williams@example.com', 'hashed_password_4', 'Sarah', 'Williams');

-- Insert sample properties
INSERT INTO properties (host_id, title, description, price, location, amenities) VALUES
(1, 'Cozy Apartment in Downtown', 'A beautiful apartment in the heart of the city', 85.00, 'New York, NY', 'WiFi, Kitchen, TV'),
(2, 'Beach House with Ocean View', 'Relaxing beach house with stunning ocean views', 150.00, 'Miami, FL', 'Pool, WiFi, Beach Access'),
(1, 'Mountain Cabin Retreat', 'Quiet cabin in the mountains perfect for getaways', 120.00, 'Denver, CO', 'Fireplace, Hiking Trails, WiFi'),
(3, 'City Loft with Rooftop Access', 'Modern loft with amazing city views', 95.00, 'Chicago, IL', 'Rooftop, WiFi, Modern Amenities');

-- Insert sample bookings
INSERT INTO bookings (guest_id, property_id, check_in, check_out, total_price, status) VALUES
(2, 1, '2025-09-10', '2025-09-15', 425.00, 'confirmed'),
(3, 2, '2025-10-01', '2025-10-07', 900.00, 'confirmed'),
(4, 3, '2025-09-20', '2025-09-25', 600.00, 'pending'),
(1, 4, '2025-11-01', '2025-11-05', 380.00, 'confirmed');

-- Insert sample payments
INSERT INTO payments (booking_id, amount, payment_method, status) VALUES
(1, 425.00, 'credit_card', 'completed'),
(2, 900.00, 'paypal', 'completed'),
(4, 380.00, 'credit_card', 'completed');

-- Insert sample reviews
INSERT INTO reviews (booking_id, rating, comment) VALUES
(1, 5, 'Amazing stay! The apartment was perfect and the location was great.');
(2, 4, 'Beautiful beach house, would definitely come back again.');

-- Insert sample messages
INSERT INTO messages (sender_id, receiver_id, content) VALUES
(2, 1, 'Hi, I''m interested in your apartment. Is it available next week?'),
(1, 2, 'Yes, it''s available. How many guests will be staying?'),
(3, 2, 'Your beach house looks amazing! What are the check-in times?');
