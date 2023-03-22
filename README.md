# Curise-Api
Welcome to the README file for the RESTful Cruise API!
This API is designed to provide a user-friendly and intuitive way for developers to access and manipulate information about cruises. The API allows you to retrieve information about cruises, including cruise line, ship, itinerary, and pricing information. You can also create, update, and delete cruises.
</br> https://cruise.herokuapp.com/

# HTTP Methods
| Http Methods |           Route            | Description |
| :---         |     :---:                  |          ---: |
| GET          | /cruiseinfo                | get cruise information |
| GET          | /cruiseinfo/:cruiseinfoID/cruiseactivity | get cruise activity for particular cruise |
| POST         | /cruiseinfo                | create a new cruise information |
| POST         | /cruiseactivity | create a new cruise Activity |
| PUT          | /cruiseinfo | update an existing cruise information |
| PUT          | /cruiseactivity  | update an existing cruise Activity |
| DELETE       | /cruiseinfo/:cruiseinfoID  | delete an existing cruise information |
| DELETE       | /cruiseactivity/:cruiseinfoID  |delete an existing cruise activity |


## cruiseinfo
https://cruise.herokuapp.com/cruiseinfo
```json

  {
        "destination_port": "red-sea-jeddah",
        "end_date": "2023-04-06T00:00:00Z",
        "departure_port": "red-sea-jeddah",
        "cruise_line": "Jeddah, KSA(Day 1)->Yanbu, KSA(Day 2)-> Day at Sea(Day 3)->Sokhna Port, Egypt(Day 4)->Safaga, Egypt(Day 5)->Aqaba(petra), Jordan(Day 6)-> Day at Sea(Day 7)-> Jeddah, KSA(Day 8)",
        "cruise_name": "SHIP: MSC SPLENDIDA",
        "price": "1500 Sr room/per day",
        "id": "BD647744-70B0-4AF5-A1FB-747C10CC44CA",
        "start_date": "2023-03-29T00:00:00Z"
    }
    
 ```
 ## cruiseactivity
 https://cruise.herokuapp.com/cruiseactivity
 ```json
  {
        "price": "100 Sr",
        "activity_end_time": "2023-12-13T00:00:00Z",
        "offers": "20%  for families",
        "name_of_event": "Snorkel Adventure",
        "activity_description": "Snorkeling is the practice of swimming on or through a body of water while equipped with a diving mask, a shaped breathing tube called a snorkel, and usually swimfins.",
        "activity_start_time": "2023-12-13T00:00:00Z",
        "id": "8ABFA5BA-AB8D-4BAD-8847-0859D2F3247D",
        "cruiseinfo": {
            "id": "19010CEE-3396-4D11-84AD-98C558A6B3FB"
        },
        "activity_type": "Snorkeling",
        "location": "cruise roof"
    }
    
 ```


# Response Format
All responses from the Cruise API are returned in JSON format.
Error Handling
The Cruise API returns error responses in JSON format. Error responses include an error message and an HTTP status code.

# Conclusion
Thank you for choosing the RESTful Cruise API for your application. If you have any questions or issues, please don't hesitate to contact us. We hope you find our API useful and easy to use!
