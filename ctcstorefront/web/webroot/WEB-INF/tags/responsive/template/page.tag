<%@ tag body-content="scriptless" trimDirectiveWhitespaces="true"%>
<%@ attribute name="pageTitle" required="false" rtexprvalue="true"%>
<%@ attribute name="pageCss" required="false" fragment="true"%>
<%@ attribute name="pageScripts" required="false" fragment="true"%>
<%@ attribute name="hideHeaderLinks" required="false"%>

<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="header" tagdir="/WEB-INF/tags/responsive/common/header"%>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/responsive/common/footer"%>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/responsive/common"%>
<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/responsive/cart" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="breadcrumb" tagdir="/WEB-INF/tags/responsive/nav/breadcrumb"%>

<template:master pageTitle="${pageTitle}">

	<jsp:attribute name="pageCss">
		<jsp:invoke fragment="pageCss" />
	</jsp:attribute>

	<jsp:attribute name="pageScripts">
		<jsp:invoke fragment="pageScripts" />
	</jsp:attribute>

	<jsp:body>
		<div class="branding-mobile hidden-md hidden-lg display-none">
			<div class="js-mobile-logo">
				<%--populated by JS acc.navigation--%>
			</div>
		</div>
		<main data-currency-iso-code="${currentCurrency.isocode}">
			<spring:theme code="text.skipToContent" var="skipToContent" />
			<a href="#skip-to-content" class="skiptocontent" data-role="none">${skipToContent}</a>
			<spring:theme code="text.skipToNavigation" var="skipToNavigation" />
			<a href="#skiptonavigation" class="skiptonavigation" data-role="none">${skipToNavigation}</a>


			<header:header hideHeaderLinks="${hideHeaderLinks}" />


			
			
			<a id="skip-to-content"></a>
			<c:if test="${cmsPage.name ne'Homepage'}">
				<c:set var="nonhomepage" value="no-homepage"/>
			</c:if>
			<div class="${nonhomepage}">
				<common:globalMessages />
				<cart:cartRestoration />
				
				
				<c:if test="${fn:length(breadcrumbs) > 0}">
					<div class="breadcrumb-section">
						<breadcrumb:breadcrumb breadcrumbs="${breadcrumbs}" />
					</div>
				</c:if>
				<jsp:doBody />
			</div>

			<footer:footer />
		</main>

	</jsp:body>

</template:master>
