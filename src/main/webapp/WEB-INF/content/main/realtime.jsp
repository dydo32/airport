<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/about.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/about_responsive.css">
	
	<link href="/airport/resources/list/style.css" rel="stylesheet" media="all">
	<link href="/airport/resources/list/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/airport/resources/list/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    
    <link rel="stylesheet" type="text/css" href="/airport/resources/styles/news.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/news_responsive.css">
</head>
<body>
	<div class="home">
		<div class="background_image" style="background-image:url(/airport/resources/images/about.jpg)"></div>
	</div>

	<!-- Search -->

	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">Departures</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" placeholder="Destination" required="required">
									<input type="text" class="search_input search_input_2" placeholder="Airline" required="required">
									<input type="text" class="search_input search_input_3" placeholder="Flight" required="required">
									<input type="text" class="search_input search_input_4" placeholder="Time" required="required">
									<button class="home_search_button">search</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="about">
	<div class="intro_background" style="background-image:url(/airport/resources/images/intro.png)"></div>
		<div class="container">

			<!-- List -->
			<div class="user-data m-b-40">
				<h3 class="title-3 m-b-30">
					<i class="zmdi zmdi-airplane"></i>Departure Schedule
				</h3>
				<div class="table-responsive table-data">
					<table class="table">
						<thead>
							<tr>
								<td><label class="au-checkbox"> <input
										type="checkbox"> <span class="au-checkmark"></span>
								</label></td>
								<td>Airline/Flight
								<td>
								<td>Destination</td>
								<td>Departure Time</td>
								<td>GATE</td>
								<td>Status</td>
								<td>More</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><label class="au-checkbox"> <input
										type="checkbox"> <span class="au-checkmark"></span>
								</label></td>
								<td>
									<div class="table-data__info">
										<h6>KE5691</h6>
										<span> <a href="#">대한항공</a>
										</span>
									</div>
								</td>
								<td><img src="/airport/resources/logo/KOREANAIR.jpg"
									width="300"></td>
								<td>
									<div class="table-data__info">
										<h6>TAIPEI</h6>
									</div>
								</td>
								<td>
									<h4>17:50</h4>
								</td>
								<td>30</td>
								<td><span class="role user">출발</span></td>
								<td><span class="more"> <i class="zmdi zmdi-more"></i>
								</span></td>
							</tr>
							<tr>
								<td><label class="au-checkbox"> <input
										type="checkbox"> <span class="au-checkmark"></span>
								</label></td>
								<td>
									<div class="table-data__info">
										<h6>OZ106</h6>
										<span> <a href="#">Asiana Airlines</a>
										</span>
									</div>
								</td>
								<td><img src="/airport/resources/logo/ASIANAAIRLINES.png"
									width="300"></td>
								<td>
									<div class="table-data__info">
										<h6>TOKYO/NARITA</h6>
									</div>
								</td>
								<td>
									<h4>17:55</h4>
								</td>
								<td>17</td>
								<td><span class="role user">출발</span></td>
								<td><span class="more"> <i class="zmdi zmdi-more"></i>
								</span></td>
							</tr>
							<tr>
								<td><label class="au-checkbox"> <input
										type="checkbox"> <span class="au-checkmark"></span>
								</label></td>
								<td>
									<div class="table-data__info">
										<h6>KE5749</h6>
										<span> <a href="#">대한항공</a>
										</span>
									</div>
								</td>
								<td><img src="/airport/resources/logo/KOREANAIR.jpg"
									width="300"></td>
								<td>
									<div class="table-data__info">
										<h6>KITA KYUSHU</h6>
									</div>
								</td>
								<td>
									<h4>18:00</h4>
								</td>
								<td>103</td>
								<td><span class="role member">탑승중</span></td>
								<td><span class="more"> <i class="zmdi zmdi-more"></i>
								</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="user-data__footer">
					<button class="au-btn au-btn-load">load more</button>
				</div>
			</div>
			<!-- END LIST-->

			<!-- Pagination -->
			<div class="pagination">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li class="active"><a href="#">1.</a></li>
					<li><a href="#">2.</a></li>
					<li><a href="#">3.</a></li>
					<li><a href="#">4.</a></li>
					<li><a href="#">5.</a></li>
				</ul>
			</div>
			</br></br>

		</div>
	</div>
</body>
</html>