<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA" crossorigin="anonymous">

</head>
<body>
<div class="container">

<h1>Please fill in this form to register:</h1>

<form action="/complete-page" method="post">
  <fieldset>
    <div class="form-group">
      <label for="firstName">First Name</label>
      <input type="text" class="form-control" id="firstName" placeholder="First Name">
    </div>
    <div class="form-group">
      <label for="lastName">Last Name</label>
      <input type="text" class="form-control" id="lastName" placeholder="Last Name">
    </div>
    <div class="form-group">
      <label for="Email">E-mail</label></>
        <input type="text" class="form-control" id="Email" placeholder="email@example.com">
    </div>
    <div class="form-group">
      <label for="phoneNumber">Phone Number</label>
      <input type="number" class="form-control" id="phoneNumber" placeholder="xxx-xxxx-xxxx">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" id="password" placeholder="Password">
    </div>
  <br>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>





</body>
</html>