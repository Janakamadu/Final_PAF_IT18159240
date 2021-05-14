package com;

import model.Payment;
//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
//For JSON
import com.google.gson.*;
//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;
@Path("/Payment")
public class PaymentService
{
Payment paymentObj = new Payment();
@GET
@Path("/")
@Produces(MediaType.TEXT_HTML)
public String readPayment()
{
	return paymentObj.readPayment();
}
@POST
@Path("/")
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Produces(MediaType.TEXT_PLAIN)
public String insertPayment(@FormParam("userID") String userID,
@FormParam("amount") String amount,
@FormParam("description") String description,
@FormParam("contact") String contact )
{
String output = paymentObj.insertPayment(userID, amount, description, contact);
return output;
}

@PUT
@Path("/")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.TEXT_PLAIN)
public String updatePayment(String paymentData)
{
//Convert the input string to a JSON object
JsonObject paymentObject = new JsonParser().parse(paymentData).getAsJsonObject();
//Read the values from the JSON object
String paymentID = paymentObject.get("paymentID").getAsString();
String userID = paymentObject.get("userID").getAsString();
String amount = paymentObject.get("amount").getAsString();
String description = paymentObject.get("description").getAsString();
String contact = paymentObject.get("contact").getAsString();

String output = paymentObj.updatePayment( paymentID, userID, amount , description , contact);
return output;
}

@DELETE
@Path("/")
@Consumes(MediaType.APPLICATION_XML)
@Produces(MediaType.TEXT_PLAIN)
public String deletePayment(String paymentData)
{
//Convert the input string to an XML document
Document doc = Jsoup.parse(paymentData, "", Parser.xmlParser());

String paymentID = doc.select("paymentID").text();
String output = paymentObj.deletePayment(paymentID);
return output;
}
}

	