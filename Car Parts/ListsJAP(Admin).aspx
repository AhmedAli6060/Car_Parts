<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListsJAP(Admin).aspx.cs" Inherits="Car_Parts.ListsJAP_Admin_" %>
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
                                    إضافة تشليح السيارات اليابانية</h2>
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
                                                     اسم قطعة التشليح</label>
                                                <asp:TextBox ID="txtNameofpart" CssClass="input-sm" placeholder=" اسم قطعة التشليح ..."
                                                    runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtNameofpart" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                     السعر</label>
                                                <asp:TextBox ID="txtPrice" class="input-sm" placeholder=" السعر ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtPrice" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                     الوصف</label>
                                                <asp:TextBox ID="txtDesc" class="input-sm" placeholder=" الوصف ..." runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtDesc" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                     صورة القطعة</label>
                                                <asp:FileUpload ID="fuImage" runat="server" />
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:LinkButton ID="lbAdd" Style="background-color: #18428c; color: #ffffff" class="primary-button text-center btn-block btn-lg "
                                                runat="server" OnClick="lbAdd_Click">إضافة</asp:LinkButton>
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
                                محتويات تشليح السيارات اليابانية</h2>
                            <span></span>
                            <hr />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />

    <asp:GridView ID="gvContetUSA" DataKeyNames="PartsID" CssClass="table table-bordered table-hover"
        align="Center" Style="width: 80%" AutoGenerateColumns="false" AllowPaging="true"
        PageSize="20" runat="server" OnPageIndexChanging="gvContetUSA_PageIndexChanging"
        OnRowCancelingEdit="gvContetUSA_RowCancelingEdit" OnRowDeleting="gvContetUSA_RowDeleting"
        >

        <Columns>
           
            <asp:TemplateField HeaderText="اسم الصورة">
                <ItemTemplate>
                    <asp:Label ID="lbll2" runat="server" Text='<%# Eval("Image") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="الوصف">
                <ItemTemplate>
                    <asp:Label ID="lbll3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="السعر">
                <ItemTemplate>
                    <asp:Label ID="lbll4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="اسم القطعة">
                <ItemTemplate>
                    <asp:Label ID="lbll5" runat="server" Text='<%# Eval("NameOFPart") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField  ShowDeleteButton="true" DeleteText="حذف" />
        </Columns>
    </asp:GridView>

</asp:Content>
