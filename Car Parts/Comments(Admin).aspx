<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comments(Admin).aspx.cs" Inherits="Car_Parts.Comments_Admin_" %>
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
                                     كومنتات الأعضاء</h2>
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:GridView ID="gvSubject" CssClass="table table-bordered table-hover" 
        Width="70%" align="Center" AutoGenerateColumns="False" AllowPaging="true"
        PageSize="20" DataKeyNames="Subject_ID" runat="server" 
        onpageindexchanging="gvSubject_PageIndexChanging" 
        onrowdeleting="gvSubject_RowDeleting" >
        <Columns>
        <asp:TemplateField HeaderText="الموضوع">
        <ItemTemplate>
            <asp:Label ID="lblSub" runat="server" Text='<%# Eval("Sub") %>' ></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="اسم المستخدم">
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>' ></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="التاريخ">
        <ItemTemplate>
            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Createdate") %>' ></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="true" DeleteText="حذف" />
        </Columns>
    </asp:GridView>

    
</asp:Content>
