<%

String usr = (String)session.getAttribute("userid");
String bikename=request.getParameter("b1");
String price=request.getParameter("p1");
String comp=request.getParameter("c1");

if(usr == null)
{	
 response.sendRedirect("login.html");
}
else{
%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style >.creditCardForm {
    max-width: 700px;
    background-color: #fff;
    margin: 100px auto;
    overflow: hidden;
    padding: 25px;
    color: #4c4e56;
}
.creditCardForm label {
    width: 100%;
    margin-bottom: 10px;
}
.creditCardForm .heading h1 {
    text-align: center;
    font-family: 'Open Sans', sans-serif;
    color: #4c4e56;
}
.creditCardForm .payment {
    float: left;
    font-size: 18px;
    padding: 10px 25px;
    margin-top: 20px;
    position: relative;
}
.creditCardForm .payment .form-group {
    float: left;
    margin-bottom: 15px;
}
.creditCardForm .payment .form-control {
    line-height: 40px;
    height: auto;
    padding: 0 16px;
}
.creditCardForm .owner {
    width: 63%;
    margin-right: 10px;
}
.creditCardForm .CVV {
    width: 35%;
}
.creditCardForm #card-number-field {
    width: 100%;
}
.creditCardForm #expiration-date {
    width: 49%;
}
.creditCardForm #credit_cards {
    width: 50%;
    margin-top: 25px;
    text-align: right;
}
.creditCardForm #pay-now {
    width: 100%;
    margin-top: 25px;
}
.creditCardForm .payment .btn {
    width: 100%;
    margin-top: 3px;
    font-size: 24px;
    background-color: #2ec4a5;
    color: white;
}
.creditCardForm .payment select {
    padding: 10px;
    margin-right: 15px;
}
.transparent {
    opacity: 0.2;
}
@media(max-width: 650px) {
    .creditCardForm .owner,
    .creditCardForm .CVV,
    .creditCardForm #expiration-date,
    .creditCardForm #credit_cards {
        width: 100%;
    }
    .creditCardForm #credit_cards {
        text-align: left;
    }
}</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Credit Card Validation Demo</title>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css">
</head>

<body>
<a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </a>
<div class="creditCardForm">
    <div class="heading">
        <h1>Confirm Purchase</h1>
    </div>
    <div class="payment">
        <form   onsubmit="return validate1()" name= "myForm2" action="pay.jsp">
		<input type="text" name="uname" value="<%out.println(usr);%>" hidden>
            <div class="form-group companyname">
                <label for="owner">COMAPNY NAME</label>
                <input type="text" class="form-control" id="owner"  name="co1"   value="<%out.println(comp);%>" readonly>
            </div>
		    <div class="form-group" id="expirationdate" name= "bikename" required>
				<label>BIKE NAME</label>
                <input type="text" name="bb"  class="form-control" id="owner"	value="<%out.println(bikename);%>" readonly>
            </div>
			
		    <div class="form-group" id="expirationdate" name= "bikename" required>
				<label>PRICE</label>
			<input type="text" name="pp" class="form-control" id="owner" value="<%out.println(price);%>" readonly>
			</div>
            <div class="form-group owner">
                <label for="owner">Card holdername</label>
                <input type="text" class="form-control" id="owner"  name="owne" required>
            </div>
            <div class="form-group CVV">
                <label for="cvv">CVV</label>
                <input type="password" class="form-control" id="cvv" name="cv" required>
            </div>
            <div class="form-group" id="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" class="form-control" id="cardNumber" name="cardNumbe" required>
            </div>
            <div class="form-group" id="expirationdate" name= "expirationdat" required>
                <label>Expiration Date</label>
                <select>
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    <option value="16"> 2016</option>
                    <option value="17"> 2017</option>
                    <option value="18"> 2018</option>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                </select>
            </div>
			
            <div class="form-group" id="credit_cards">
                <img src="visa.svg" id="visa" style="width:40px;">
                <img src="mastercard.png" id="mastercard" style="width:40px;" >
                <img src="amex.jpeg" id="amex" style=" width:40px;">
            </div>
            <div class="form-group" id="pay-now">
                <button type="submit" class="btn btn-default" id="confirm-purchase">Confirm</button>
            </div>
        </form>
    </div>
</div>

    
    <script >
    function  validate1(){
         var letters= /^[A-Za-z]+$/;
         var numbers= /^[0-9]+$/;
         
                   var owner=document.getElementById("owner");
                    var cvv=document.getElementById("cvv");
                    var cardNumber=document.getElementById("cardNumber");
                    var expirationdate=document.getElementById("expirationdate");
                    
                
                        if(owner.value.match(letters))
                        {
                            
                        }
                         else
                        {
                            alert("card holdername can only have alphabets ");
                            return false;
                        }
      
      if(cardNumber.value.match(numbers))
      {

        if(cardNumber.value.length ==16)
        {

        }
        else
        {
            alert("cardnumber must be equal to 16");
            return false
        }
      
      }
      else
      {
        alert("cardnumber can only have numbers");
        return false;
      
      }
      
      if(cvv.value.length!=3)
      {
      alert("cvv numnber is equal to 3 only");
      return false;
      }
      
    }
       
    </script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="assets/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>
<%
}
%>