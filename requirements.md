# Airbnb Clone Backend Technical and Functional Requirements Specification

# 📄 Backend Features Coverage
 - 🔑 User Management
 - 👨‍💼 Property Management
 - 🧾Booking Functionality


### 1. User Management
#### Guests, Hosts and Admins will be differented by use of JWT(Json Web Tokens) for RBAC.
#### Oauth will be used to automatic user registration/login
#### Technical Requirements
     - Database: MYSQL
     - Framework: Django, DRF
     - Endpoints: /account/register
                  /account/login
                  /api/v1/get-token
                  /api/v1/refresh-token
     - Automated Testing:  Pytest
     - Rate Limiting: API throttling
     - API Documentation: Swagger UI
            

### 2. Property Management
#### Hosts and Admins will be have the ability to CRUD properties using different dashboards.
#### Technical Requirements
     - Database: MYSQL
     - Framework: Django, DRF
     - Endpoints: /property/<id>
                  /properties/
     - Automated Testing:  Pytest
     - Rate Limiting: API throttling
     - API Documentation: Swagger UI
      - Payment gateway integration: Paypal, Stripe, Mpesa
      - Search and Filtering:
      - Caching: Redis

### 3. Booking System
#### Guests should be able to book rooms/properties efficiently without mistakes of double booking.
#### Hosts should be able to CRUD rooms/properties for guests to book and pay seamlessly.
#### Technical Requirements
     - Database: MYSQL
     - Framework: Django, DRF
     - Endpoints: /booking/<id>
                  /bookings/
     - Automated Testing:  Pytest
     - Rate Limiting: API throttling
     - API Documentation: Swagger UI
     - Payment gateway integration: Paypal, Stripe, Mpesa
     - Notification: Email, SMS and In-app notifications 
     - Search and Filtering: 
     - Caching: Redis