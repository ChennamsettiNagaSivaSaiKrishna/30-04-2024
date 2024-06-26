<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>

<%
// Generate a random ticket number
Random random = new Random();
int ticketNumber = 1000000000 + random.nextInt(900000000);

// Retrieve other data from request attributes
String departure = (String) request.getAttribute("departure");
String destination = (String) request.getAttribute("destination");
String train = (String) request.getAttribute("train");
String date = (String) request.getAttribute("date");
String travelClass = (String) request.getAttribute("travelClass");
List<List<String>> pdata = (List<List<String>>) request.getAttribute("pdata");
double totalFare = (Double) request.getAttribute("totalFare");
double baseFare=(Double)request.getAttribute("baseFare");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Information</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>
    <style>
         body {
    min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #ff8400;
        }
        .container {
            max-width: 800px;
            margin: 20px;
            padding: 40px;
            background-color:limegreen;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            background-color:rgb(255, 230, 204);
        }
        h1, h2 {
            text-align: center;
      }
        p {
            margin: 10px 0;

        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid brown;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #ff8000;
        }


    </style>
</head>
<body>
    <div class="container">
        <h1>Ticket Information</h1>
        <p>Ticket Number: <%= ticketNumber %></p>
        <p>Departure: <%= departure %></p>
        <p>Destination: <%= destination %></p>
        <p>Train: <%= train %></p>
        <p>Date: <%= date %></p>
        <p>Travel Class: <%= travelClass %></p>
        <h2>Passenger Details</h2>
        <table>
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Seat Preference</th>
            </tr>
            <!-- Loop through passenger data and generate table rows -->
          <% for (List<String> passenger : pdata) { %>
                <tr>
                    <td><%= passenger.get(0) %></td>
                    <td><%= passenger.get(1) %></td>
                    <td><%= passenger.get(2) %></td>
                    <td><%= passenger.get(3) %></td>
                </tr>
            <% } %>
        </table>
        <h5>Fare for each Passenger :<%=baseFare %></h5>
        <h2>Total Fare is : <%= totalFare %></h2>
    </div>

</body>
</html>
