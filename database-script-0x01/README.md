# Database Schema Documentation

## Overview
This directory contains the SQL schema for the Airbnb-like database system.

## Files
- `schema.sql`: SQL script to create all database tables, relationships, and indexes

## Tables Description

### users
Stores user account information, including hosts and guests.

### properties
Contains property listings with details about each rental property.

### bookings
Manages reservation records linking guests to properties.

### payments
Tracks payment transactions associated with bookings.

### reviews
Stores guest reviews and ratings for properties.

### messages
Handles communication between users.

## Relationships
- One user can host multiple properties (one-to-many)
- One user can make multiple bookings (one-to-many)
- One property can have multiple bookings (one-to-many)
- Each booking has one payment (one-to-one)
- Each booking has one review (one-to-one)
- Users can send multiple messages to each other (many-to-many through the messages table)

## Constraints
- Primary keys on all tables
- Foreign key constraints to maintain referential integrity
- Unique constraints on appropriate columns (e.g., user email)
- Data type validation constraints
