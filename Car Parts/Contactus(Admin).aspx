<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="Contactus(Admin).aspx.cs" Inherits="Car_Parts.Contactus_Admin_" %>

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
                                    التواصل مع العملاء</h2>
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
                                <div class="search-form col-md-12">
                       <asp:GridView ID="gvContact" CssClass="table table-bordered table-hover" 
                                        runat="server" AutoGenerateColumns="False" DataKeyNames="Cotact_ID" 
                                        DataSourceID="EntityDataSource1" AllowPaging="True">
                                        <Columns>
                                            
                                            <asp:BoundField DataField="Name" HeaderText="الاسم" SortExpression="Name" />
                                            <asp:BoundField DataField="Subject" HeaderText="الموضوع" 
                                                SortExpression="Subject" />
                                            <asp:BoundField DataField="Email" HeaderText="الميل" SortExpression="Email" />
                                            <asp:BoundField DataField="Message" HeaderText="الرسالة" 
                                                SortExpression="Message" />
                                                <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" EditText="تعديل" 
                                                UpdateText="تحديث" CancelText="إلغاء" />
                                        </Columns>
                                    </asp:GridView>

                                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                                        ConnectionString="name=Auto_PartsEntities" 
                                        DefaultContainerName="Auto_PartsEntities" EnableDelete="True" 
                                        EnableFlattening="False" EntitySetName="ContactUs">
                                    </asp:EntityDataSource>


                                    </ContentTemplate>
    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
