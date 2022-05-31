<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WorkShops(User).aspx.cs" Inherits="Car_Parts.WorkShops_User_" %>

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
                                    مراكز وورش الصيانة</h2>
                                <span>عناوين اتصال مراكز وورش الصيانة</span>
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
                    <div class="address-part">
                        <div class="item">
                            <div class="row">
                                <div class="row">
                                    <div role="form">
                                        <div class="col-md-12">
                                            <asp:GridView ID="gvWork" CssClass="table table-bordered table-hover" AllowPaging="true"
                                                PageIndex="20" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="gvWork_PageIndexChanging">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="اسم الورشة">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="الهاتف">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="الجوال">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="العنوان">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="صورة الورشة">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Label3" Style="width: 200px; height: 200px" AlternateText="لا توجد صورة"
                                                                runat="server" ImageUrl='<%# "~/images/"+ Eval("Photo") %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
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
