<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/responsive/cart" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

<c:url value="/cart/checkout" var="checkoutUrl" scope="session"/>
<div class="row">
    <div class="col-xs-12 col-sm-10 col-md-7 col-lg-6 pull-right cart-actions--print">
    </br>
    </br>
<!--         <div class="express-checkout"> -->
<%--             <div class="headline"><spring:theme code="text.expresscheckout.header"/></div> --%>
<%--             <strong><spring:theme code="text.expresscheckout.title"/></strong> --%>
<!--             <ul> -->
<%--                 <li><spring:theme code="text.expresscheckout.line1"/></li> --%>
<%--                 <li><spring:theme code="text.expresscheckout.line2"/></li> --%>
<%--                 <li><spring:theme code="text.expresscheckout.line3"/></li> --%>
<!--             </ul> -->
            <sec:authorize access="isFullyAuthenticated()">
                <c:if test="${expressCheckoutAllowed}">
                    <div class="checkbox">
                        <label>
                            <c:url value="/checkout/multi/express" var="expressCheckoutUrl" scope="session"/>
                            <input type="checkbox" class="express-checkout-checkbox" data-express-checkout-url="${expressCheckoutUrl}">
                            <spring:theme text="I would like to Express checkout" code="cart.expresscheckout.checkbox"/>
                        </label>
                     </div>
                </c:if>
           </sec:authorize>
<!--         </div> -->
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-sm-10 col-md-7 col-lg-6 pull-right">
        <div class="cart-actions">
            <div class="row">
                <div class="col-sm-3 col-md-6 pull-right">
                    <button class="btn btn-primary btn-block btn--continue-checkout js-continue-checkout-button"  data-checkout-url="${ctcCheckoutUrl}"><spring:theme code="proceed.checkout"/></button>
                </div>
 
                <div class="col-sm-5 pull-right">
                    <button class="btn btn-default btn-block btn--continue-shopping js-continue-shopping-button" data-continue-shopping-url="${continueShoppingUrl}"><spring:theme text="Continue Shopping" code="cart.page.continue"/></button>
                </div>
<%--                 <cart:saveCart/> --%>
            </div>
        </div>
    </div>
</div>


<c:if test="${showCheckoutStrategies && not empty cartData.entries}" >
    <div class="cart-actions">
        <div class="row">
            <div class="col-xs-12 col-sm-5 col-md-3 col-lg-2 pull-right">
                <input type="hidden" name="flow" id="flow"/>
                <input type="hidden" name="pci" id="pci"/>
<!--                 <select id="selectAltCheckoutFlow" class="doFlowSelectedChange form-control"> -->
<%--                     <option value="multistep"><spring:theme code="checkout.checkout.flow.select"/></option> --%>
<%--                     <option value="multistep"><spring:theme code="checkout.checkout.multi"/></option> --%>
<%--                     <option value="multistep-pci"><spring:theme code="checkout.checkout.multi.pci"/></option> --%>
<!--                 </select> -->
                <select id="selectPciOption" class="display-none">
                    <option value=""><spring:theme code="checkout.checkout.multi.pci.select"/></option>
                    <c:if test="${!isOmsEnabled}">
                        <option value="default"><spring:theme code="checkout.checkout.multi.pci-ws"/></option>
                        <option value="hop"><spring:theme code="checkout.checkout.multi.pci-hop"/></option>
                    </c:if>
                    <option value="sop"><spring:theme code="checkout.checkout.multi.pci-sop" text="PCI-SOP" /></option>
                </select>
            </div>
        </div>
    </div>
</c:if>