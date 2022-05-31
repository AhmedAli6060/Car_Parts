<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User(Admin).aspx.cs" Inherits="Car_Parts.User_Admin_" %>
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
                                    بيانات المستخدمين</h2>
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
    
    <asp:GridView ID="gvUser" AutoGenerateColumns="False" CssClass="table table-bordered table-hover"
        align="Center" Style="width: 80%"  runat="server" DataKeyNames="User_ID" 
        DataSourceID="EntityDataSource1" AllowPaging="True">
        <Columns>

            <asp:BoundField DataField="UserName" HeaderText="اسم المستخدم" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Role" HeaderText="الحالة" SortExpression="Role" />
                        <asp:CommandField ShowDeleteButton="True" EditText="تعديل" UpdateText="تحديث" DeleteText="حذف" CancelText="إلغاء" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=Auto_PartsEntities" 
        DefaultContainerName="Auto_PartsEntities" EnableDelete="True" 
        EnableFlattening="False" EnableUpdate="True" EntitySetName="Users">
    </asp:EntityDataSource>



    </ContentTemplate>
    </asp:UpdatePanel>





</asp:Content>
