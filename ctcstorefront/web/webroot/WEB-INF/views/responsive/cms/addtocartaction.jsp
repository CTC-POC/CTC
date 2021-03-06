<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>

<c:url value="${url}" var="addToCartUrl"/>
<c:url value="${product.url}/configuratorPage/${configuratorType}" var="configureProductUrl"/>

<product:addToCartTitle/>
<!--
<form:form method="post" id="configureForm" class="configure_form" action="${configureProductUrl}">
<c:if test="${product.purchasable}">
	<input type="hidden" maxlength="3" size="1" id="qty" name="qty" class="qty js-qty-selector-input" value="1">
</c:if>
<input type="hidden" name="productCodePost" value="${product.code}"/>

<c:if test="${empty showAddToCart ? true : showAddToCart}">
	<c:set var="buttonType">button</c:set>
	<c:if test="${product.purchasable and product.stock.stockLevelStatus.code ne 'outOfStock' }">
		<c:set var="buttonType">submit</c:set>
	</c:if>
	<c:choose>
		<c:when test="${fn:contains(buttonType, 'button')}">
			<c:if test="${product.configurable}">
				<button id="configureProduct" type="button" class="btn btn-primary btn-block js-enable-btn outOfStock" disabled="disabled">
					<spring:theme code="basket.configure.product"/>
				</button>
			</c:if>
		</c:when>
		<c:otherwise>
            <c:if test="${product.configurable}">
                <button id="configureProduct" type="submit" class="btn btn-primary btn-block js-enable-btn" disabled="disabled"
                        name="configure">
                    <spring:theme code="basket.configure.product"/>
                </button>
            </c:if>
		</c:otherwise>
	</c:choose>
</c:if>
</form:form>
-->



<div class="row">
	<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
		<form:form method="post" id="addToCartForm" class="add_to_cart_form" action="${addToCartUrl}">
			<c:if test="${product.purchasable}">
				<input type="hidden" maxlength="3" size="1" id="qty" name="qty" class="qty js-qty-selector-input" value="1">
			</c:if>
			<input type="hidden" name="productCodePost" value="${product.code}"/>
			
			<c:if test="${empty showAddToCart ? true : showAddToCart}">
				<c:set var="buttonType">button</c:set>
				<c:if test="${product.purchasable and product.stock.stockLevelStatus.code ne 'outOfStock' }">
					<c:set var="buttonType">submit</c:set>
				</c:if>
				<c:choose>
					<c:when test="${fn:contains(buttonType, 'button')}">
						<button type="${buttonType}" class="btn btn-primary btn-block js-add-to-cart outOfStock" disabled="disabled">
							<spring:theme code="product.variants.out.of.stock"/>
						</button>
					</c:when>
					<c:otherwise>
						<ycommerce:testId code="addToCartButton">
								<button id="addToCartButton" type="${buttonType}" class="btn btn-primary btn-block js-add-to-cart js-enable-btn" disabled="disabled">
									Add To Cart
								</button>
						</ycommerce:testId>
					</c:otherwise>
				</c:choose>
			</c:if>
		</form:form>
	</div>
	<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
		<form:form method="post" id="configureForm" class="" action="${addToCartUrl}">
			<c:if test="${product.purchasable}">
				<input type="hidden" maxlength="3" size="1" id="qty" name="qty" class="qty js-qty-selector-input" value="1">
			</c:if>
			<input type="hidden" name="productCodePost" value="${product.code}"/>
			
			<c:if test="${empty showAddToCart ? true : showAddToCart}">
				<c:set var="buttonType">button</c:set>
				<c:if test="${product.purchasable and product.stock.stockLevelStatus.code ne 'outOfStock' }">
					<c:set var="buttonType">submit</c:set>
				</c:if>
				<c:choose>
					<c:when test="${fn:contains(buttonType, 'button')}">
						
					</c:when>
					<c:otherwise>
						<ycommerce:testId code="addToCartButton">
								<button id="buyNowButton" type="${buttonType}" class="btn btn-default btn-block js-add-to-cart js-enable-btn" disabled="disabled" name="buyNow">
									<spring:theme code="basket.add.to.basket"/>
								</button>	
						</ycommerce:testId>
					</c:otherwise>
				</c:choose>
			</c:if>
		</form:form>
	</div>
</div>
