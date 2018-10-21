<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bİlgi ekle sayfası</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" 
integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


</head>
<body>


<div  class="container">
	
	<h1>Kişi Ekle</h1>
	
	<%
		boolean hataDurum = (boolean)request.getAttribute("errors");	
	if(hataDurum){
		
		if(request.getAttribute("adi_errors") != null)
		{
			String adiHata = (String)request.getAttribute("adi_errors");
			%>
				<div class="alert alert-danger"><%= adiHata %></div>
			<%	
		}
		
		if(request.getAttribute("soyadi_errors") != null){
			String soyadiHata = (String)request.getAttribute("soyadi_errors");
			%>
				<div class="alert alert-danger"><%= soyadiHata %></div>
			<%	
		}
		
		if(request.getAttribute("tcno_errors") != null){
			String tcnoHata = (String)request.getAttribute("tcno_errors");
			%>
				<div class="alert alert-danger"><%= tcnoHata %></div>
			<%	
		}
		
		if(request.getAttribute("okul_errors") != null){
			String okulHata = (String)request.getAttribute("okul_errors");
			%>
				<div class="alert alert-danger"><%= okulHata %></div>
			<%	
		}
		
		if(request.getAttribute("yas_errors") != null){
			String yasHata = (String)request.getAttribute("yas_errors");
			%>
				<div class="alert alert-danger"><%= yasHata %></div>
			<%	
		}
		
		
	}			
	%>
	
<form action="KayitEkle" method="post">
	
	<div class="row">
	
		<div class="col-lg-3">
			<label>Adınız :</label>
		</div>
		
		<div class="col-lg-7">
			<input type="text" name="adi" value="<%= (String)request.getAttribute("adiniz") != null ? (String)request.getAttribute("adiniz") : ""  %>" class="form-control" />
		</div>
		
		<div class="col-lg-3">
			<label>Soyadınız :</label>
		</div>
		
		<div class="col-lg-7">
			<input type="text" name="soyadi" value="<%= (String)request.getAttribute("soyadiniz") != null ? (String)request.getAttribute("soyadiniz") : ""  %>" class="form-control" />
		</div>
		
		<div class="col-lg-3">
			<label>TC Numarası :</label>
		</div>
		
		<div class="col-lg-7">
			<input type="text" name="tc" value="<%= (String)request.getAttribute("tcnumara") != null ? (String)request.getAttribute("tcnumara") : ""  %>" class="form-control" />
		</div>
		
		<div class="col-lg-3">
			<label>Okul :</label>
		</div>
		
		<div class="col-lg-7">
			<input type="text" name="okul" value="<%= (String)request.getAttribute("okulunuz") != null ? (String)request.getAttribute("okulunuz") : ""  %>" class="form-control" />
		</div>
		
		<div class="col-lg-3">
			<label>Yaşınız :</label>
		</div>
		
		<div class="col-lg-7">
			<input type="text" name="yas" value="<%= (String)request.getAttribute("yasiniz") != null ? (String)request.getAttribute("yasiniz") : ""  %>" class="form-control" />
		</div>
		
		<div class="col-lg-6">
			<input  type="submit" value="Kaydet"  class="btn btn-lg btn-success"/>
		</div>
		
		<div class="col-lg-2">
			<input  type="reset" value="Temizle"  class="btn btn-lg btn-danger"/>
		</div>
		
		
	</div>

</form>

</div>


<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>