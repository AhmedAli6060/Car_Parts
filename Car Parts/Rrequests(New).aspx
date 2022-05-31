<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Rrequests(New).aspx.cs" Inherits="Car_Parts.Rrequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading-content-bg">
                        <div class="row">
                            <div class="heading-content col-md-12 col-sm-12">
                                <h2>
                                    طلب قطعة غيار جديد</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blog-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="request-part">
                        <div class="item">
                            <div class="row">
                                <div class="search-form col-md-12">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <form role="form">
                                            <div class="form-group">
                                                <label>
                                                    اسم العميل</label>
                                                <asp:TextBox ID="Name" runat="server" class="input-sm" placeholder="اسم العميل..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="Name">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    رقم الجوال</label>
                                                <asp:TextBox ID="Phone" runat="server" class="input-sm" TextMode="Number" placeholder="اكتب رقمك ..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="Phone">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                     البريد الإلكتروني</label>
                                                <asp:TextBox ID="txtMail" CssClass="input-sm" placeholder="البريد الإلكتروني ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtMail" ID="RequiredFieldValidator8" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    المنطقة</label>
                                                <asp:TextBox ID="Region" runat="server" class="input-sm" placeholder="المنطقة ..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="Region">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    المدينة</label>
                                                <asp:TextBox ID="City" runat="server" class="input-sm" placeholder="المدينة..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="City">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    رقم الشاصي للسيارة (يوجد بالاستمارة)</label>
                                                <asp:TextBox ID="CarNum" runat="server" class="input-sm" placeholder="الرقم الشخصى للسيارة..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="CarNum">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    ماركة السيارة</label>
                                                <asp:TextBox ID="CarBrand" runat="server" class="input-sm" placeholder="ماركة السيارة..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="CarBrand">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    نوع السيارة</label>
                                                <asp:TextBox ID="TypeOfCar" runat="server" class="input-sm" placeholder="نوع السيارة ..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="TypeOfCar">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    طراز السيارة (ان وجد)</label>
                                                <asp:TextBox ID="CarStyle" runat="server" class="input-sm" placeholder="طراز السيارة ..."></asp:TextBox>
                                                
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    موديلها</label>
                                                <asp:TextBox ID="CarModel" runat="server" class="input-sm" placeholder="الموديل..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="CarModel">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    مسمى القطعة المطلوبة</label>
                                                <asp:TextBox ID="NameOfPart" runat="server" class="input-sm" placeholder="مسمى القطعة المطلوبة..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="NameOfPart">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>
                                                    وصف القطعة المطلوبة</label>
                                                <asp:TextBox ID="Description" runat="server" style="resize:none" class="input-sm" TextMode="MultiLine"
                                                    placeholder="وصف القطعة المطلوبة ..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                                                    ForeColor="Red" ControlToValidate="Description">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lbldel" runat="server" Text="فى حالة وجود القطعة هل تود أن ترسلها لمدينتك"></asp:Label>
                                                <asp:RadioButtonList ID="rblDeler" CssClass="checkbox" runat="server" 
                                                    RepeatDirection="Horizontal">
                                                    <asp:ListItem>نعم</asp:ListItem>
                                                    <asp:ListItem>لا</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="Red" ControlToValidate="rblDeler" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

                                               
                                                <br />
                                            </div>
                                            <div class="form-group">
                                                <asp:CheckBox ID="CheckBox2" runat="server" CssClass="checkbox" Width="300px" Text="اوافق على الشروط والأحكام"
                                                    TextAlign="Left" />
                                                 

                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <a href="#">
                                               
                                                <asp:LinkButton ID="lbAdd" runat="server" Style="background-color: #18428c; color: #ffffff"
                                                    CssClass="primary-button text-center btn-block btn-lg" 
                                                onclick="lbAdd_Click">اطلبها الآن</asp:LinkButton>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
