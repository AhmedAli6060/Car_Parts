<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="Car_Parts.ResetPass" %>
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
                                        <h2>استعادة كلمة المرور</h2>
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
                                                     برجاء كتابة امس المستخدم الخاص بك</label>
                                                <asp:TextBox ID="txtUsername" CssClass="input-sm" placeholder="اسم المستخدم  ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtUsername" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group">
                                            <label id="lbl" runat="server" visible="false">كلمة المرور الخاصة بك هي:- </label>
                                                <asp:Label ID="lblPass" Visible="false" runat="server" Text=""></asp:Label>
                                            </div>


                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:LinkButton ID="lbAdd" Style="background-color: #18428c; color: #ffffff" class="primary-button text-center btn-block btn-lg "
                                                runat="server" onclick="lbAdd_Click" >استعادة</asp:LinkButton>                            
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
