# Rocket Elevators Information System

<h2>Week 9 - Consolidation</h2>

The website deployed on CodeBoxx servers can be found at http://samcoutinho.net/ . In order to visit the "backoffice" section, you will need to login with the following information: 

- username: admin@admin.com 
- password: admin123

## How to try out the integrations:

### Google Maps

Log in using the aforementioned admin account and while in the backoffice, click on the Customer Maps link under "Data Visualization" on the lefthand panel and you will be redirected to a map of all the buildings that are currently serviced by Rocket Elevators. You can get detailed information about each building by clicking on a cluster then clicking on one of the markers.

### Twilio

When the status of an elevator is set to "Intervention", the technical contact assigned to the building associated with the elevator will receive an SMS.

### Slack
While in the admin dashboard, click on "Elevators" on the lefthand panel. you'll see the Slack API in action by changing the status of an elevator.


### Dropbox

The Dropbox API takes files that are uploaded via the contact form and when the contact that filled the form becomes a customer, the previously uploaded attachment will be sent to Dropbox for safekeeping.

### Sendgrid

After customers fill out the contact form, the Sendgrid API will reach out to them via email to greet them and assure them that a representative will contact them shortly.

### IBM Watson

Once again in the backoffice section of the website, a function will trigger every time an admin logs in. This function calls the IBM Watson API and receives a text to speech audio file that goes over key metrics of the company. This file can be played via the audio player embedded in the dashboard.

### Zendesk

When a customer sends a contact form or a quote, the Zendesk API is triggered and a new ticket is created on the behalf of the customer. This ticket contains the customer's contact information and provides an easy way for the Rocket Elevators support team to respond to customers and follow up on requests.


## Main languages used to build the project

- [Rails](https://guides.rubyonrails.org/)

- [HTML5](https://www.w3schools.com/html/)

- [RUBY](https://www.ruby-lang.org/)

- [JavaScript](https://www.javascript.com/)

- [CSS](https://css-tricks.com/)

## More info
For a more in-depth look at how to set up the project in your own local environment, please head to:

https://github.com/WilliamSinclairF/Rocket_Elevators_Information_System/blob/master/README.md
