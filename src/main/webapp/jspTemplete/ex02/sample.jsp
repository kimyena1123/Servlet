<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sample 페이지</title>

<!-- Bootstrap CDN -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<link rel = "stylesheet" href = "jspTemplete/ex02/style.css">
</head>
<body>
	<div class = "container">
		<header class = "d-flex justify-content-center align-items-center">
			<h1>Layout</h1>
		</header>
		<nav class = "main-menu">
			<ul class = "nav">
				<li class = "nav-item"><a href = "#" class = "nav-link">메뉴1</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link">메뉴2</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link">메뉴3</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link">메뉴4</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link">메뉴5</a></li>
			</ul>
		</nav>
		<section class = "contents">
			<img alt = "사진" width = "500" src = "https://cdn.pixabay.com/photo/2022/01/08/19/51/christmas-tree-6924746_960_720.jpg">
			<div>새해 복 많이 받으세요</div>
		</section>
		<footer class = "mt-4">
			Copyright © marondal 2021
		</footer>
	</div>
</body>
</html>