<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<template:page pageTitle="${pageTitle}">

	<c:url value="/" var="homePageUrl" />
	<cms:pageSlot position="SideContent" var="feature" element="div" class="side-content-slot cms_disp-img_slot searchEmptyPageTop">
		<cms:component component="${feature}" element="div" class="no-space yComponentWrapper searchEmptyPageTop-component"/>
	</cms:pageSlot>
	 <div class="row">
        <div class="col-xs-12 col-md-9 big-header-plp"><h1><spring:theme code="search.page.searchText" arguments="${searchPageData.freeTextSearch}"/></h1></div>
    </div>
	<div class="search-empty">
		<div class="headline">
			<spring:theme code="search.no.results.products"/> 
		</div>
		<a class="btn btn-default  js-shopping-button" href="${ctcHomePageUrl}">
			<spring:theme code="general.continue.shopping" text="Continue Shopping"/>
		</a>
	</div>
	
	<cms:pageSlot position="MiddleContent" var="comp" element="div" class="searchEmptyPageMiddle">
		<cms:component component="${comp}" element="div" class="yComponentWrapper searchEmptyPageMiddle-component"/>
	</cms:pageSlot>

	<cms:pageSlot position="BottomContent" var="comp" element="div" class="searchEmptyPageBottom">
		<cms:component component="${comp}" element="div" class="yComponentWrapper searchEmptyPageBottom-component"/>
	</cms:pageSlot>
	
</template:page>