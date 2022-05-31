<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Subject(comments).aspx.cs" Inherits="Car_Parts.Subject_comments_" %>

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
                                    آراء الأعضاء</h2>
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

                                                       

            <div class="blog-page">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="sign-part">
                                <div class="item">
                                    <div class="row">
                                        <asp:Panel ID="pComments" Visible="true" runat="server">
                                            <div class="search-form col-md-12">
                                                <form role="form">
                                                <div class="form-group">
                                                    <asp:GridView ID="Repeater1" class="table table-bordered table-hover" align="center" AutoGenerateColumns="false" runat="server">
                                                    <Columns>
                                                    <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" style="color: rgba(255, 186, 0, 0.9); font-size: x-large" runat="server" Text='<%# Eval("UserName")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="التعليقات" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Comment")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CreateDate")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    </asp:TemplateField>
                                                    </Columns>
                                                    </asp:GridView>

                                                    <asp:TextBox ID="txtComment" CssClass="input-sm" placeholder="اضف تعليق ..." runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtComment" ID="RequiredFieldValidator1"
                                                        runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </div>
                                                </form>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Timer ID="time1" runat="server" Interval="20000" OnTick="time1_Tick" >
                                                        </asp:Timer>
                                                        <asp:LinkButton ID="lbAdd" Style="background-color: #18428c; color: #ffffff" class="primary-button text-center btn-block btn-lg "
                                                            runat="server" OnClick="lbAdd_Click1">إضافة</asp:LinkButton>
             
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>
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

