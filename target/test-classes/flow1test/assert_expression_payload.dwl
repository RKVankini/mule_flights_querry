%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "ID": 1,
    "code": "rree0001",
    "price": 541,
    "departureDate": "2016-01-20T00:00:00",
    "origin": "MUA",
    "destination": "LAX",
    "emptySeats": 0,
    "plane": {
      "type": "Boeing 787",
      "totalSeats": 200
    }
  },
  {
    "ID": 3,
    "code": "ffee0192",
    "price": 300,
    "departureDate": "2016-01-20T00:00:00",
    "origin": "MUA",
    "destination": "LAX",
    "emptySeats": 0,
    "plane": {
      "type": "Boeing 777",
      "totalSeats": 300
    }
  },
  {
    "ID": 10,
    "code": "eefd4511",
    "price": 900,
    "departureDate": "2016-01-15T00:00:00",
    "origin": "MUA",
    "destination": "LAX",
    "emptySeats": 100,
    "plane": {
      "type": "Boeing 777",
      "totalSeats": 300
    }
  }
])