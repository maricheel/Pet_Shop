<%@include file="header.jsp" %> <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="center_content">
    <div class="left_content">
        <div class="title">
            <span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Register
        </div>

        <div class="feat_prod_box_details">
            <p class="details">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
            </p>

            <div class="contact_form">
                <div class="form_subtitle">create new account</div>

                <form name="register" action="reg.do" method="post">
                    <div class="form_row">
                        <label class="contact"><strong>Username:</strong></label>
                        <input name="username" type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                        <label class="contact"><strong>Password:</strong></label>
                        <input name="password" type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                        <label class="contact"><strong>Email:</strong></label>
                        <input name="email" type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                        <label class="contact"><strong>Phone:</strong></label>
                        <input name="phone" type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                        <label class="contact"><strong>Company:</strong></label>
                        <input name="company" type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                        <label class="contact"><strong>Adrres:</strong></label>
                        <input name="adrres" type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                        <button type="submit" class="register" value="register">submit</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="clear"></div>
    </div>
    <!--end of left content-->

    <div class="right_content">
        <div class="languages_box">
            <div id="google_translate_element"></div>

            <script type="text/javascript">
                function googleTranslateElementInit() {
                    new google.translate.TranslateElement({ pageLanguage: "en" }, "google_translate_element");
                }
            </script>

            <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        </div>
        <div class="currency">
            <span class="red">Currency: </span>
            <a href="#">GBP</a>
            <a href="#">EUR</a>
            <a href="#"><strong>USD</strong></a>
        </div>

        <div class="cart">
            <c:if test="${ !empty sessionScope.userid }">
                <div class="title">
                    <span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart
                </div>
                <div class="home_cart_content">
                    <span class="red">${sessionScope.username}</span>
                </div>
                <a href="cart.do?userid=${sessionScope.userid }" class="view_cart">view cart</a>
            </c:if>
        </div>

        <div class="title">
            <span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop
        </div>
        <div class="about">
            <p>
                <img src="images/about.gif" alt="" title="" class="right" />
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
            </p>
        </div>

        <div class="right_box">
            <div class="title">
                <span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions
            </div>
            <c:forEach items="${modelPets}" var="p">
                <c:if test="${ p.getPet_status().equals('promo')}">
                    <div class="new_prod_box">
                        <a href="details.do?id=${p.getPet_id()}">${p.getPet_name()}</a>
                        <div class="new_prod_bg">
                            <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                            <a href="details.do?id=${p.getPet_id()}"><img src="images/${p.getPet_images()}" alt="" title="" class="thumb" border="0" /></a>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>

        <div class="right_box">
            <div class="title">
                <span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories
            </div>

            <ul class="list">
                <c:forEach items="${modelCategorys}" var="p">
                    <li><a href="category.do?id=${p.getPet_category_id()}">${p.getPet_category_name()}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!--end of right content-->

    <div class="clear"></div>
</div>
<!--end of center content-->

<div class="footer">
    <div class="left_footer">
        <img src="images/footer_logo.gif" alt="" title="" /><br />
        <a href="http://csscreme.com/freecsstemplates/" title="free css templates"><img src="images/csscreme.gif" alt="free css templates" border="0" /></a>
    </div>
    <div class="right_footer">
        <a href="#">home</a>
        <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
    </div>
</div>


</div>

</body>
</html>>