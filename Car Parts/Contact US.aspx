<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact US.aspx.cs" Inherits="Car_Parts.Contact_US" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <div class="page-heading">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-content-bg">
                                <div class="row">
                                    <div class="heading-content col-md-8 col-sm-8">
                                        <h2>تواصل معنا</h2>
                                        <span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="contact-us">
                <div id="map" class="contact-map" style="width:100%;height:480px;margin-top: -80px;"></div>

            </div>

            <div class="contact-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="send-message">
                                <div class="sep-section-heading">
                                    <h2>ارسل رسالة</h2>
                                </div>
                                <form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class=" col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="txtName" class="blog-search-field" placeholder="الاسم ..." runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox ID="txtMail" class="blog-search-field" placeholder="البريد الإلكتروني ..." runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtMail"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                       ErrorMessage="بريد الكتروني غير صحيح" ControlToValidate="txtMail" 
                       ForeColor="Red" 
                       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                            <asp:TextBox ID="txtMobile" class="subject" TextMode="Number" placeholder="الجوال ..." runat="server"></asp:TextBox>
                                            
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <asp:TextBox ID="txtMessage" class="input" name="message" placeholder="الرسالة..." TextMode="MultiLine" runat="server"></asp:TextBox>
                                            
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="submit-coment col-md-12">
                                            <div class="primary-button">
                                                
                                                <asp:LinkButton ID="lbSend" runat="server" onclick="lbSend_Click">ارسل الآن</asp:LinkButton>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="sep-section-heading">
                                <h2>معلومات الاتصال</h2>
                            </div>
                            <p>تواصل معنا من خلال :</p>
                            <div class="contact-info">
                                <ul>
                                    <li><i class="fa fa-phone"></i>
                                        <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label></li>
                                    <li><i class="fa fa-envelope"></i>
                                        <asp:Label ID="lblMail" runat="server" Text=""></asp:Label></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


</asp:Content>
