<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA"
	crossorigin="anonymous">
	
<link href="./Style.css" rel="stylesheet" type="text/css">
	

</head>
<body>
	<div class="container">

		<h1>Please fill in this form to register:</h1>

		<form action="/complete-page" method="post" name="myform"
			onsubmit="return validateForm()">
			<fieldset>
				<div class="form-group">
					<label for="firstName">First Name</label> <input type="text"
						class="form-control" name="firstName" placeholder="First Name">
				</div>
				<div class="form-group">
					<label for="lastName">Last Name</label> <input type="text"
						class="form-control" name="lastName" placeholder="Last Name">
				</div>
				<div class="form-group">
					<label for="Email">E-mail</label></> <input type="text"
						class="form-control" id="email" name="email"
						placeholder="email@example.com">
				</div>
				<div class="form-group">
					<label for="phoneNumber">Phone Number</label> <input type="number"
						class="form-control" name="phoneNumber"
						placeholder="xxx-xxxx-xxxx">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> <input
						type="password" class="form-control" name="password1"
						id="password1" placeholder="Password">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Confirm Password</label> <input
						type="password" class="form-control" name="password2"
						id="password2" placeholder="Password">
				</div>
				<div class="form-group">
					<label for="exampleSelect2">Please choose your favorite
						drink:</label> <select multiple="" class="form-control" name="favCoffee">
						<option>Espresso</option>
						<option>Americano</option>
						<option>Latte</option>
						<option>Mocha</option>
						<option>Cortado</option>
						<br>
					</select> <label>What quality is most important to you in a cafe?</label>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="quality" id="quality"
							value="option1"> Bomb coffee, locally roasted and
							ethically sourced and baristas with extensive java knowledge.
						</label> <label class="form-check-label"> <input type="radio"
							class="form-check-input" name="quality" id="quality"
							value="option2"> A quiet place to study with some areas
							featuring ample natural light and some areas shaded from light
							with copious amounts of outlets.
						</label><label class="form-check-label"> <input type="radio"
							class="form-check-input" name="quality" id="quality"
							value="option3"> A stylish placed filled to the brim with
							vintage tchotchkes, pastel colors, real plants and hip music to
							fuel your creative juices.
						</label>
					</div>
					<br> <label>Select all that apply:</label>
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value=""">
							I drink coffee in the morning.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value="">
							I drink coffee in the afternoon.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value="">
							I drink coffee in the evening.
						</label>
					</div>
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Submit</button>
			</fieldset>
		</form>
</body>

<script>

	function validateForm() {
		if (!validateEmail()) return false
		if (!validatePassword()) return false 
		

		return true
	}
	
	function validateEmail() {
		var email = document.myform.email.value

		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
			return (true)
		}
		alert("You have entered an invalid email address!")
		return (false)
	}

	function validatePassword() {
		var password1 = document.myform.password1.value
		var password2 = document.myform.password2.value

		if (password1 === password2) {
			console.log("yesh")
			return (true)
		}
		alert("Your passwords do not match! Try again!")
		return (false)

	}
</script>
</html>