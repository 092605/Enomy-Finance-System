
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <%@ taglib prefix="c" uri="jakarta.tags.core" %> --%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Enomy Finance</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="/css/theme.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/navbar.css">

</head>

<body>

<!-- NAVBAR -->
<jsp:include page="/WEB-INF/jsp/component/navbar.jsp"/>


<!-- HERO SECTION -->
<section class="section hero">

	<div class="container">
	
		<div class="row align-items-center">
		
			<div class="col-lg-6">
			
				<h1>Manage Your Finances Smarter</h1>
				
				<p class="text-muted">
				Currency conversion, investment planning, and financial insights all in one platform.
				</p>
				
				<a class="btn btn-main me-3">Get Started</a>
				<a class="btn btn-outline-light">Learn More</a>
				
			</div>
		
			<div class="col-lg-6 text-center">
			
				<img src="/images/finance-dashboard.png" class="img-fluid">
			
			</div>
			
			</div>
	
	</div>

</section>





<!-- ABOUT SECTION -->
<section class="about-section container py-5" id="about">

    <div class="text-center mb-5">
        <h2 class="section-title">ABOUT ENOMY FINANCE</h2>
    </div>

    <div class="row align-items-center g-5">

        <!-- Left Side -->
        <div class="col-lg-6">
            <div class="about-image-card">
                <img src="/images/enomy-finance-main.png"
				     alt="Enomy Finance Illustration"
				     class="about-image">
            </div>
        </div>

        <!-- Right Side -->
        <div class="col-lg-6">

            <p class="about-description">
                Enomy Finance is a web-based financial planning system that helps users
                convert currencies, plan savings, and estimate investment growth.
                The platform provides simple tools for individuals who want to manage
                their finances more effectively.
            </p>

            <div class="latest-articles mt-4">
                <h5 class="mb-3">Latest Articles</h5>

                <div class="article-card mb-3">
                    <div class="article-icon">📰</div>
                    <div>
                        <p class="article-title mb-1">Understanding Currency Conversion</p>
                        <small class="text-muted">Learn how exchange values affect your money.</small>
                    </div>
                </div>

                <div class="article-card mb-3">
                    <div class="article-icon">📈</div>
                    <div>
                        <p class="article-title mb-1">Savings Planning Basics</p>
                        <small class="text-muted">Plan your savings goals step by step.</small>
                    </div>
                </div>

                <div class="article-card">
                    <div class="article-icon">💡</div>
                    <div>
                        <p class="article-title mb-1">Investment Growth Insights</p>
                        <small class="text-muted">See how long-term financial growth works.</small>
                    </div>
                </div>
            </div>

        </div>

    </div>

</section>




<!-- FOOTER -->
<!-- <footer class="section text-center">

<div class="container">

<p class="text-muted">
© 2026 Enomy Finance System
</p>

</div>

</footer> -->



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<script src="/js/navbar-behaviour.js"></script>

</body>

</html>