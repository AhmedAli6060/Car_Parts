<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Car_Parts.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="pLogin" runat="server">

    <div class="page-heading">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-content-bg">
                                <div class="row">
                                    <div class="heading-content col-md-8 col-sm-8">
                                        <h2>تسجيل الدخول</h2>
                                        <span></span>
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
                    <div class="sign-part">
                        <div class="item">
                            <div class="row">
                                <div class="search-form col-md-12">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <form role="form">
                                            <div class="form-group">
                                                <label>
                                                     اسم المستخدم</label>
                                                <asp:TextBox ID="txtUsername" CssClass="input-sm" placeholder="اسم المستخدم  ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtUsername" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                     كلمة المرور</label>
                                                <asp:TextBox ID="txtPass" class="input-sm" TextMode="Password" placeholder="الباسورد  ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtPass" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:Label ID="Label1" runat="server" style="color:rgba(255, 186, 0, 0.9);font-size:x-large" Visible="false" Text=" خطأ"></asp:Label>
                                            </div>
                                         
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:LinkButton ID="lbAdd" Style="background-color: #18428c; color: #ffffff" class="primary-button text-center btn-block btn-lg "
                                                runat="server" onclick="lbAdd_Click">تسجيل الدخول</asp:LinkButton>
                                                <br />
                                                <br />
                                                
                                                <asp:LinkButton ID="lbNew" runat="server" Font-Size="X-Large" CausesValidation="false" onclick="lbNew_Click">تسجيل حساب جديد</asp:LinkButton>
                                                <br />
                                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" CausesValidation="false" PostBackUrl="~/ResetPass.aspx" >-نسيت كلمة المرور ؟</asp:LinkButton>
                                                
                                      
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

    </asp:Panel>



    <asp:Panel ID="pSignup" Visible="false" runat="server">

     <div class="page-heading">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-content-bg">
                                <div class="row">
                                    <div class="heading-content col-md-8 col-sm-8">
                                        <h2>تسجيل جديد</h2>
                                        <span></span>
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
                            <div class="sign-part">
                                <div class="item">
                                    <div class="row">
                                        <div class="search-form col-md-12">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <form role="form">
                                                        <div class="form-group">
                                                            <div class="input-select col-md-12">
                                                                <asp:DropDownList ID="ddlstatus" runat="server">
                                                                <asp:ListItem>العضوية</asp:ListItem>
                                                                <asp:ListItem>عميل</asp:ListItem>
                                                                <asp:ListItem>صاحب تشليح</asp:ListItem>
                                                                <asp:ListItem>صاحب محل قطع غيال</asp:ListItem>
                                                                <asp:ListItem>مندوب مبيعات</asp:ListItem>
                                                                <asp:ListItem>مندوب ارسالية بضائع</asp:ListItem>
                                                                <asp:ListItem>صاحب مركز و ورشة صيانة</asp:ListItem>
                                                                <asp:ListItem>صاحب سطحة</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="ddlstatus" InitialValue="العضوية" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>اسم العميل</label>
                                                            <asp:TextBox ID="txtName" class="input-sm" placeholder="اسم العميل ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtName" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        
                                                        <div class="form-group">
                                                            <label>رقم الجوال</label>
                                                            <asp:TextBox ID="txtMobile" class="input-sm" TextMode="Number" placeholder="رقم الجوال ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtMobile" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>المنطقة</label>
                                                            <asp:TextBox ID="txtArea" class="input-sm" placeholder="المنطقة ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtArea" ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>المدينة</label>
                                                            <asp:TextBox ID="txtCity" class="input-sm" placeholder="المدينة..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtCity" ID="RequiredFieldValidator8" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>اسم التشليح (لعضوية صاحب تشليح فقط)</label>
                                                           
                                                            <asp:TextBox ID="txtNamePart" class="input-sm" placeholder="اسم التشليح (لعضوية صاحب تشليح فقط)..." runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>ارفاق صورة من السجل التجارى(ان وجد)</label>
                                                            <asp:FileUpload ID="fuImage" runat="server" />
                                                            <asp:Label ID="Label2" runat="server" style="color:rgba(255, 186, 0, 0.9);font-size:x-large" Visible="false" Text="تمت الإضافة"></asp:Label>
                                                            
                                                            <br />
                                                            
                                                        </div>

                                                        <div class="form-group">
                                                            <label>اسم المستخدم</label>
                                                            <asp:TextBox ID="txtUser" class="input-sm"  placeholder="اسم المستخدم ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtUser" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>كلمة المرور</label>
                                                            <asp:TextBox ID="txtPassword" class="input-sm" TextMode="Password" placeholder="كلمة المرور ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtPassword" ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>تأكيد كلمة المرور</label>
                                                            <asp:TextBox ID="txtConfPass" class="input-sm" TextMode="Password" placeholder="تأكيد كلمة المرور ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtPassword" ID="RequiredFieldValidator13" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            <asp:CompareValidator ForeColor="Red" ControlToValidate="txtConfPass" ControlToCompare="txtPassword" ID="CompareValidator1" runat="server" ErrorMessage="كلمتا المرور غير متطابقتين"></asp:CompareValidator>
                                                            
                                                        </div>

                                                    </form>
                                                </div>

                                                
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                            <asp:LinkButton ID="lbAddnew" 
                                                        Style="background-color: #18428c; color: #ffffff; direction: ltr;" class="primary-button text-center btn-block btn-lg "
                                                runat="server" onclick="lbAddnew_Click" >تسجيل </asp:LinkButton>
                                                </div>
                                            </div>
                                            <br />
                                                
                                                
                                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" 
                                                CausesValidation="false" onclick="LinkButton1_Click" >لديك حساب يالفعل</asp:LinkButton>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>


    </asp:Panel>


</asp:Content>
