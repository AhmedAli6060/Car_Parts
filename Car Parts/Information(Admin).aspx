<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Information(Admin).aspx.cs" Inherits="Car_Parts.Information_Admin_" %>
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
                                <h2>
                                    تعديل معلومات التواصل</h2>
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
                                                    معلومات عن الموقع</label>
                                                <asp:TextBox ID="txtabout" CssClass="input-sm" placeholder="معلومات عن الموقع ..."
                                                    runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtabout" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group">
                                                <label>
                                                    رقم الجوال</label>
                                                <asp:TextBox ID="txtMobile" TextMode="Number" CssClass="input-sm" placeholder="رقم الجوال ..."
                                                    runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtMobile" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    الميل</label>
                                                <asp:TextBox ID="txtMail" class="input-sm" placeholder="الميل ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtMail" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    العنوان</label>
                                                <asp:TextBox ID="txtAddress" class="input-sm" placeholder="العنوان ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtAddress" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                   عنوان صفحة الفيس بك</label>
                                                <asp:TextBox ID="txtFacebook" class="input-sm" placeholder="عنوان صفحة الفيس بك ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtFacebook" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    عنوان صفحة تويتر </label>
                                                <asp:TextBox ID="txttwitter" class="input-sm" placeholder="عنوان صفحة تويتر  ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txttwitter" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:LinkButton ID="lbAdd" Style="background-color: #18428c; color: #ffffff" class="primary-button text-center btn-block btn-lg "
                                                runat="server" onclick="lbAdd_Click" >إضافة</asp:LinkButton>
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
