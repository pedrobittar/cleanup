<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="pt-BR" id="ng-app" ng-app="">
<head>
        <title><spring:message  code="project.title" /></title>
            
        <script src="<c:url value='/resources/js/angular.min.js' />"></script>       	
		
		<link href="<c:url value='/resources/css/bootstrap.css'  />" rel="stylesheet" type="text/css"/>
		<link href="<c:url value='/resources/img/fav.png'  />" rel="shortcut icon"/>
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="<c:url value='/resources/js/jquery.min.js' />"></script>
		
		 <!-- start-smoth-scrolling-->
		 <script src="<c:url value='/resources/js/move-top.js' />"></script>
		 <script src="<c:url value='/resources/js/easing.js' />"></script>

		 <!-- Custom Theme files -->
		<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet" type="text/css"/>
		
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
		</script>
		
		<!--webfonts-->
		<link href="<c:url value='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,700'  />" rel="stylesheet" type="text/css"/>

		<!--//webfonts-->
		<!--start-top-nav-script-->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!--//End-top-nav-script-->		
                
    </head>
    <body>
<!--         <div class="container"> -->
<%--             <tiles:insertAttribute name="header" /> --%>

            <tiles:insertAttribute name="body" />
<!--         </div> -->

<%--         <tiles:insertAttribute name="footer" /> --%>
    </body>
</html>