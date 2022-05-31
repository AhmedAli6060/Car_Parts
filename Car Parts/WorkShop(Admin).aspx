<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="WorkShop(Admin).aspx.cs" Inherits="Car_Parts.WorkShop_Admin_" %>
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
                                    إضافة مراكز ورش صيانة</h2>
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
                                                    اسم الورشة</label>
                                                <asp:TextBox ID="txtName" CssClass="input-sm" placeholder="اسم الورشة ..."
                                                    runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                الهاتف</label>
                                                <asp:TextBox ID="txtPhone" class="input-sm" placeholder="الهاتف ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtPhone" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    الجوال</label>
                                                <asp:TextBox ID="txtMobile" class="input-sm" placeholder="الجوال ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtMobile" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    العنوان</label>
                                                <asp:TextBox ID="txtLocation" class="input-sm" placeholder="العنوان ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtLocation" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    صورة الورشة</label>
                                                <asp:FileUpload ID="fuImage" runat="server" />
                                             <asp:Label ID="Label2" runat="server" style="color:rgba(255, 186, 0, 0.9);font-size:x-large" Visible="false" Text="تمت الإضافة"></asp:Label>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:LinkButton ID="lbAdd" Style="background-color: #18428c; color: #ffffff" class="primary-button text-center btn-block btn-lg "
                                                runat="server" onclick="lbAdd_Click">إضافة</asp:LinkButton>
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
   
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg">
                    <div class="row">
                        <div class="heading-content col-md-8 col-sm-8">
                            <h2 style="color:rgba(255, 186, 0, 0.9)">
                               بيانات مراكز ورش الصيانة</h2>
                            <span></span>
                            <hr />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-bordered table-hover"
            AutoGenerateColumns="False" DataKeyNames="WorkShop_ID" 
            DataSourceID="EntityDataSource1">
            <Columns>
                
                <asp:BoundField DataField="Name" HeaderText="اسم الورشة" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Phone" HeaderText="الهاتف" 
                    SortExpression="Phone" />
                <asp:BoundField DataField="Mobile" HeaderText="الجوال" 
                    SortExpression="Mobile" />
                <asp:BoundField DataField="Location"  HeaderText="العنوان" 
                    SortExpression="Location" />
                <asp:BoundField DataField="Photo" HeaderText="صورة الورشة" SortExpression="Photo" />
                <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" />
                
            </Columns>
        </asp:GridView>


        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=Auto_PartsEntities" 
            DefaultContainerName="Auto_PartsEntities" EnableDelete="True" 
            EnableFlattening="False" 
            EntitySetName="WorkShops">
        </asp:EntityDataSource>


     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg">
                    <div class="row">
                        <div class="heading-content col-md-8 col-sm-8">
                            <h2 style="color:rgba(255, 186, 0, 0.9)">
                            <hr />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />


    
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
