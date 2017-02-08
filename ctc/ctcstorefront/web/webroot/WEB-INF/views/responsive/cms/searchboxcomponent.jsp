<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<c:url value="/search/" var="searchUrl" />
<c:url value="/search/autocomplete/${component.uid}"
	var="autocompleteUrl" />

<div class="ui-front">
	<%-- <form name="search_form_${component.uid}" method="get"
		action="${searchUrl}">
		<div class="input-group">
			<spring:theme code="search.placeholder" var="searchPlaceholder" />

			<ycommerce:testId code="header_search_input">
				<input type="text" id="js-site-search-input"
					class="form-control js-site-search-input" name="text" value=""
					maxlength="100" placeholder="${searchPlaceholder}"
					data-options='{"autocompleteUrl" : "${autocompleteUrl}","minCharactersBeforeRequest" : "${component.minCharactersBeforeRequest}","waitTimeBeforeRequest" : "${component.waitTimeBeforeRequest}","displayProductImages" : ${component.displayProductImages}}'>
			</ycommerce:testId>

			<span class="input-group-btn"> <ycommerce:testId
					code="header_search_button">
					<button class="btn btn-link" type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</ycommerce:testId>
			</span>
		</div>
	</form> --%>
	
	<form id="search-form" name="search_form_${component.uid}" action="${searchUrl}" class="search" method="GET" autocomplete="off">
                    <input type="text" name="searchquery" class="search__input"><input type="submit" value="Search" class="search__button search__button_inactive">

                                    </form>

</div>
