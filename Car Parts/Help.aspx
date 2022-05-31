<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Help.aspx.cs" Inherits="Car_Parts.Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    

    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading-content-bg">
                        <div class="row">
                            <div class="heading-content col-md-12 col-sm-12">
                                <h2>
                                    طلب مساعدة على الطريق(سطحة)</h2>
                                <span>عناوين الإتصال بالسطحات</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blog-page" >
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="address-part">
                        <div class="item">
                            <div class="row">
                                <div class="search-form col-md-12">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <form role="form">
                                            <div class="input-select col-md-12">

                                            <asp:DropDownList ID="ddlCity"  runat="server" 
                                                    onselectedindexchanged="ddlCity_SelectedIndexChanged" AutoPostBack="True">
                                                </asp:DropDownList>
                                               
                                            </div>
                                            <asp:GridView ID="gvHelp" DataKeyNames="help_ID" CssClass="table table-bordered table-hover" 
                                                    AllowPaging="true" PageIndex="20" runat="server"
                                                AutoGenerateColumns="false" onpageindexchanging="gvHelp_PageIndexChanging">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="اسم قائد السطحة">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="المدينة">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField >
                                                    <asp:TemplateField HeaderText="الجوال">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            </form>
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

    </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
