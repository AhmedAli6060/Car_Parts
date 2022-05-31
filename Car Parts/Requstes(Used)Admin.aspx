<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Requstes(Used)Admin.aspx.cs" Inherits="Car_Parts.Requstes_Used_Admin" %>
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
                                    طلبات قطع غيار تشليح</h2>
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>


    <asp:GridView ID="gvRequestNew" DataKeyNames="Order_ID" runat="server" AutoGenerateColumns="false" 
    CssClass="table table-bordered table-hover"
        align="Center" Style="width: 90%" AllowPaging="true"
        PageSize="20" onpageindexchanging="gvRequestNew_PageIndexChanging" 
        onrowdeleting="gvRequestNew_RowDeleting" 
            onselectedindexchanged="gvRequestNew_SelectedIndexChanged">
        <Columns>
        <asp:TemplateField HeaderText="الاسم">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="الجوال">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="المنطقة">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Area") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="المدينة">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("City") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="رقم الشاصي">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("VinNO") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText=" ماركة السيارة">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarBrand") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText=" نوع السيارة">
        <ItemTemplate>
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("TypeOfCar") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText=" طراز السيارة">
        <ItemTemplate>
            <asp:Label ID="Label8" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText=" موديل السيارة">
        <ItemTemplate>
            <asp:Label ID="Label9" runat="server" Text='<%# Eval("CarStyle") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="اسم القطعة">
        <ItemTemplate>
            <asp:Label ID="Label10" runat="server" Text='<%# Eval("NameOfPart") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="وصف القطعة">
        <ItemTemplate>
            <asp:Label ID="Label12" runat="server" Text='<%# Eval("DescriptionOfPart") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="دليفري">
        <ItemTemplate>
            <asp:Label ID="Label13" runat="server" Text='<%# Eval("Delivery") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="تم ارسال الطلب ؟">
        <ItemTemplate>
            <asp:LinkButton ID="Label14" CommandName="select" runat="server" Text='<%# Eval("Seen") %>'></asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>


        <asp:CommandField ShowDeleteButton="true" DeleteText="حذف" />
        </Columns>
    </asp:GridView>

    </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
