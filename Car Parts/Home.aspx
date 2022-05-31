<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Car_Parts.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="slider">
        <div class="fullwidthbanner-container">
            <div class="fullwidthbanner">
                <ul>
                    <asp:Repeater runat="server" ID="Repeater1">
                        <ItemTemplate>

                            <li class="first-slide" data-transition="fade" data-slotamount="10" data-masterspeed="300">
                                <img src="images/01-slide.jpg" data-fullwidthcentering="on" alt="slide">
                                <div class="tp-caption first-line rtl tp-resizeme start" data-x="right" data-hoffset="-100"
                                    data-y="370" data-speed="1000" data-start="200" data-easing="Power4.easeOut"
                                    data-splitin="none" data-splitout="none" data-elementdelay="0" data-endelementdelay="0">
                                    <%# Eval("ServName")%></div>

                                <div class="tp-caption second-line rlb tp-resizeme start" data-x="right" data-hoffset="-100"
                                    data-y="420" data-speed="1000" data-start="800" data-easing="Power4.easeOut"
                                    data-splitin="none" data-splitout="none" data-elementdelay="0" data-endelementdelay="0">
                                    <%# Eval("Service")%></div>
                            </li>

                            <li class="first-slide" data-transition="fade" data-slotamount="10" data-masterspeed="300">
                                <img src="images/02-slide.jpg" data-fullwidthcentering="on" alt="slide">
                                <div class="tp-caption first-line rtl tp-resizeme start" data-x="right" data-hoffset="-100"
                                    data-y="370" data-speed="1000" data-start="200" data-easing="Power4.easeOut"
                                    data-splitin="none" data-splitout="none" data-elementdelay="0" data-endelementdelay="0">
                                    <%# Eval("ServName")%></div>
                                <div class="tp-caption second-line rlb tp-resizeme start" data-x="right" data-hoffset="-100"
                                    data-y="420" data-speed="1000" data-start="800" data-easing="Power4.easeOut"
                                    data-splitin="none" data-splitout="none" data-elementdelay="0" data-endelementdelay="0">
                                    <%# Eval("Service")%></div>
                            </li>
                            <li class="first-slide" data-transition="fade" data-slotamount="10" data-masterspeed="300">
                                <img src="images/03-slide.jpg" data-fullwidthcentering="on" alt="slide">
                                <div class="tp-caption first-line lft tp-resizeme start" data-x="right" data-hoffset="-100"
                                    data-y="370" data-speed="1000" data-start="200" data-easing="Power4.easeOut"
                                    data-splitin="none" data-splitout="none" data-elementdelay="0" data-endelementdelay="0">
                                    <%# Eval("ServName")%></div>
                                <div class="tp-caption second-line lfb tp-resizeme start" data-x="right" data-hoffset="-100"
                                    data-y="420" data-speed="1000" data-start="800" data-easing="Power4.easeOut"
                                    data-splitin="none" data-splitout="none" data-elementdelay="0" data-endelementdelay="0">
                                    <%# Eval("Service")%></div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>

    <div class="testimonials">
        <h2 style="text-align: center; color: rgba(255, 186, 0, 0.9)">
            خدماتنا</h2>
        <div class="container">
            <div id="owl-demo" class="owl-carousel owl-theme">
                <asp:Repeater runat="server" ID="Repeater2">
                    <ItemTemplate>
                        <div class="item col-md-8 col-md-offset-2">
                            <p>
                                <em>"</em>
                                <%# Eval("Service")%>
                                <em>"</em></p>
                            <div class="author-rate">
                                <img src="images/04-car-listing.jpg" alt="">
                                <h4>
                                    <%# Eval("ServName")%></h4>
                            </div>
                        </div>
                        <div class="item col-md-8 col-md-offset-2">
                            <p>
                                <em>"</em>
                                <%# Eval("Service")%>
                                <em>"</em></p>
                            <div class="author-rate">
                                <img src="images/01-car-listing.jpg" alt="">
                                <h4>
                                    <%# Eval("ServName")%>
                                </h4>
                            </div>
                        </div>
                        <div class="item col-md-8 col-md-offset-2">
                            <p>
                                <em>"</em>
                                <%# Eval("Service")%>
                                <em>"</em></p>
                            <div class="author-rate">
                                <img src="images/02-car-listing.jpg" alt="">
                                <h4>
                                    <%# Eval("ServName")%>
                                </h4>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <!--Start Section Our Team-->
    <div class="our_team text-center">
            <div class="team">
                <div class="container">
                    <h4>يتوفر لدينا جميع قطع الغيار</h4>
                    <div class="row">
                    <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                    
                    <div class="col-lg-4 col-sm-6">
                            <div class="person">
                                <asp:Image ID="Image1" ImageUrl='<%# "~/images/"+ Eval("Image")%>' class="img-circle" runat="server"></asp:Image>
                                <p><%# Eval("NameOFPart")%></p>
                            </div>
                        </div>

                    </ItemTemplate>
                    </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>

    <!--End Section Our Team-->
    <div class="latest-news text-center">
        <h2>
            اخر الأخبار</h2>
        <div id="owl-blog" class="owl-carousel owl-theme">
            <div class="item">
                <div class="thumb-content">
                    <img src="images/LatestNews/01-blog.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        فريق عمل جديد علي أعلي مستوي</h4>
                </div>
            </div>
            <div class="item-2">
                <div class="thumb-content">
                    <img src="images/LatestNews/03-blog.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        أفضل أنواع السيارت</h4>
                </div>
            </div>
            <div class="item">
                <div class="thumb-content">
                    <img src="images/LatestNews/port-img13.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        أحدث أنواع السيارات للتأجير والمناسبات الخاصة</h4>
                </div>
            </div>
            <div class="item-2">
                <div class="thumb-content">
                    <img src="images/LatestNews/z1.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        توفير جميع قطع الغيار</h4>
                </div>
            </div>
            <div class="item">
                <div class="thumb-content">
                    <img src="images/LatestNews/z2.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        توفير جميع أنواع المحركات لجميع السيارات الحديثة والقديمة</h4>
                </div>
            </div>
            <div class="item-2">
                <div class="thumb-content">
                    <img src="images/LatestNews/port-img11.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        توفير جميع أنواع الإطارات بأفضل الأسعار والأشكال</h4>
                </div>
            </div>
            <div class="item">
                <div class="thumb-content">
                    <img src="images/LatestNews/02-blog.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        توفير جميع أنواع المصابيح بأفضل الأسعار</h4>
                </div>
            </div>
            <div class="item-2">
                <div class="thumb-content">
                    <img src="images/LatestNews/port-img9.jpg" alt="" />
                </div>
                <div class="down-content">
                    <h4>
                        توفير جميع الامكانيات المطلوبة في السيارة</h4>
                </div>
            </div>
        </div>
    </div>

    <div class="blury-bg">
        <h1 style="color: #ffba00; text-align: center; padding-bottom: 20px;">
            تواصل معنا من خلال</h1>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="info-item">
                        <i class="fa fa-phone"></i>
                        <h4>
                            اتصل بنا من خلال</h4>
                        <div class="line-dec">
                        </div>
                        <span>
                            <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-item">
                        <i class="fa fa-envelope"></i>
                        <h4>
                            البريد الإلكتروني</h4>
                        <div class="line-dec">
                        </div>
                        <span>
                            <asp:Label ID="lblMail" runat="server" Text=""></asp:Label></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-item">
                        <i class="fa fa-map-marker"></i>
                        <h4>
                            العنوان</h4>
                        <div class="line-dec">
                        </div>
                        <span>
                            <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
