<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" type="text/css" href="css/mainStyle.css">
<link rel="stylesheet" type="text/css" href="css/formStyles.css">

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/mainStyle.css">
<link rel="stylesheet" type="text/css" href="css/formStyles.css">



<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="scripts/topicsManager.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="scripts/transitionScript.js"></script>
<script src="scripts/chatMethods.js"></script>

<script>
	var u = "${currentUser.name }";
	var myFriends = ${myFriends};
</script>


<title>MainPage</title>
</head>
<body>


	<div class="container-fluid">
		<nav class="navbar navbar-default" style="margin:0">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SocialChat</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li id="changeNew"><a href="#">Page 1</a></li>
					<li id="changeCars"><a href="#">Page 2</a></li>
					<li><a href="#">Page 3</a></li>
					<li style="text-align: center;"><a href="#">POST</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li><a href="#">${currentUser.name }, log out</a></li>

				</ul>
				<form class="navbar-form navbar-right search" role="search">
					<div class="form-group">
						<input class="form-control" placeholder="Search" type="text">
						<button class="btn">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</div>

				</form>

			</div>
		</div>
		</nav>




		<div class="container-fluid ">

			<div class="col-md-2 panel panel-default userInfo">
				<div class="panel-heading">User info</div>
			</div>

			<div class="col-md-7 topics" id="topicsContainer">


				<div class="panel panel-default" onclick="showContent();">
					<div class="panel-heading">
						<h3 class="panel-title">Panel primary</h3>
					</div>
					<div class="panel-body">Panel content</div>
				</div>


			</div>

			<div class="col-md-3" id="chat">


				<div id="display"></div>
				<!-- THINGS NEED TO BE DONE HERE !!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				<div>
					<form action="">

						<input id="userInput" type="text" name="textArea"
							placeholder="Text " autocomplete="off"> <input
							class="subimt" id="send" type="button" name="commit" value="Send">

					</form>
				</div>

			</div>

			<div class="col-md-3 panel panel-default friendList" id="friendList">
				<div class="panel-heading">Friends</div>


			</div>

		</div>




		<div class="footer">THERE WILL BE A FOOTER HERE</div>
	</div>

</body>
</html>