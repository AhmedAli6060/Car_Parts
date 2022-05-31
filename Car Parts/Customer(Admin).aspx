<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Customer(Admin).aspx.cs" Inherits="Car_Parts.Customer_Admin_" %>
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
                                        <h2>الأعضاء </h2>
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
    
    <asp:GridView ID="gvCustomer" DataKeyNames="Customer_ID" runat="server" AutoGenerateColumns="false" 
    CssClass="table table-bordered table-hover"
        align="Center" Style="width: 90%" AllowPaging="true"
        PageSize="20" onpageindexchanging="gvCustomer_PageIndexChanging" 
        onrowdeleting="gvCustomer_RowDeleting" >
        <Columns>
        <asp:TemplateField HeaderText="العضوية">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MemberShip") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="الاسم">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="الجوال">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="المنطقة">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Area") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText=" المدينة">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="اسم التشليح">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("NameOfPart") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText=" صورة السجل">
        <ItemTemplate>
            <asp:Image ID="Image1" style="max-width:200px;max-height:200px" AlternateText="لا يوجد سجل" runat="server" ImageUrl='<%#"~/images/"+ Eval("Image") %>'/>
        </ItemTemplate>
        </asp:TemplateField>


        <asp:CommandField ShowDeleteButton="true" DeleteText="حذف" />
        </Columns>
    </asp:GridView>

    </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
