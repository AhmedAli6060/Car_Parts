<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddServices.aspx.cs" Inherits="Car_Parts.AddServices" %>
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
                                    إضافة خدمة</h2>
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
                                                            <label>اسم الخدمة</label>
                                                            <asp:TextBox ID="txtName" CssClass="input-sm" placeholder="اسم الخدمة ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>الخدمة المقدمة</label>
                                                   
                                                            <asp:TextBox ID="txtServ" class="input-sm" TextMode="MultiLine" placeholder="الخدمة المقدمة ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtServ" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>

                                                    </form>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                              
                                                    <asp:LinkButton ID="lbAdd" style="background-color:#18428c;color:#ffffff" 
                                                        class="primary-button text-center btn-block btn-lg " runat="server" 
                                                        onclick="lbAdd_Click">إضافة</asp:LinkButton>
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
                <br />
                <br />

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading-content-bg">
                        <div class="row">
                            <div class="heading-content col-md-8 col-sm-8">
                                <h2>
                                     قائمة الخدمات</h2>
                                <span></span>
                            </div>
                        </div>
             
                </div>
            </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                

            <asp:GridView ID="gvServ" CssClass="table table-bordered table-hover" Width="70%" align="Center"
             AutoGenerateColumns="False" runat="server" AllowSorting="True" 
                    DataKeyNames="Services_ID" DataSourceID="EntityDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="ServName" HeaderText="اسم الخدمة" 
                        SortExpression="ServName" />
                    <asp:BoundField DataField="Service1" HeaderText="الخدمة المقدمة" 
                        SortExpression="Service1" />
                        
                    <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" />
                </Columns>
            </asp:GridView>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=Auto_PartsEntities" 
                    DefaultContainerName="Auto_PartsEntities" EnableDelete="True" 
                    EnableFlattening="False" EntitySetName="Services">
                </asp:EntityDataSource>

                </ContentTemplate>
                </asp:UpdatePanel>
        </div>
    </div>


          
               
</asp:Content>
