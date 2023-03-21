# Curise-Api
Welcome to the README file for the RESTful Cruise API!
This API is designed to provide a user-friendly and intuitive way for developers to access and manipulate information about cruises. The API allows you to retrieve information about cruises, including cruise line, ship, itinerary, and pricing information. You can also create, update, and delete cruises.


# HTTP Methods
| Http Methods |           Route            | Right-aligned |
| :---         |     :---:                  |          ---: |
| GET          | cruiseinfo/                | get cruise information |
| GET          | cruiseinfo/{cruiseinfoID}/cruiseactivity | get cruise activity for particular cruise |
| POST         | cruiseinfo/                | create a new cruise information |
| POST         | {cruiseinfoID}/cruiseactivity | create a new cruise Activity |
| PUT          | cruiseinfo/{cruiseinfoID}  | update an existing cruise information |
| DELETE       | cruiseinfo/{cruiseinfoID}  | delete an existing cruise information |
| DELETE       | {cruiseinfoID}/cruiseactivity  |delete an existing cruise activity |


# Response Format
All responses from the Cruise API are returned in JSON format.
Error Handling
The Cruise API returns error responses in JSON format. Error responses include an error message and an HTTP status code.

# Conclusion
Thank you for choosing the RESTful Cruise API for your application. If you have any questions or issues, please don't hesitate to contact us. We hope you find our API useful and easy to use!
