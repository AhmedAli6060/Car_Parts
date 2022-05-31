<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserParts.aspx.cs" Inherits="Car_Parts.UserParts" %>
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
                                    قطع غيار من الأعضاء</h2>
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
           <div class="container-fluid" align="right">
            <a data-toggle="modal" href="" id="mod" runat="server" visible="false" class="btn btn-info btn-lg" data-target="#loginModal" >إضافة موضوع</a>
        </div>

    <div class="modal fade text-center" tabindex="-1" id="loginModal" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    &times;
                </button>
                <h4 class="modal-title">أدخل التفاصيل</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="form-group">
                        <label >اسم قطعة التشاليح أو السيارة</label>
                        <asp:TextBox ID="txtName" class="form-control text-right" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>التفاصيل</label>
                        <asp:TextBox ID="txtDesc" class="form-control text-right" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>صورة قطعة الغيار أو السيارة</label>
                        <asp:FileUpload ID="fuImage" runat="server" />
                    </div>
                    <asp:Label ID="Label3" runat="server" ForeColor="red" Visible="false" Text="يجب ان تملئ البيانات"></asp:Label>
                </div>
            </div>
            <div class="modal-footer">
                <asp:Button ID="btnAdd" CssClass="btn btn-info" OnClick="btnAdd_Click" runat="server" Text="إضافة" />
            </div>
        </div>
    </div>
    </div>

    <div class="recent-car">
                <div class="container">
                    <div class="recent-car-content">
                        <div class="row">
                            <asp:Repeater ID="gvSubject" Visible="false" runat="server" 
                                onitemdatabound="gvSubject_ItemDataBound">
                            <ItemTemplate>
                            
                            <div class="col-md-4">
                                <div class="car-item">
                                    <div class="thumb-content">
                                <asp:Label ID="lblID" runat="server" Visible="false" Text='<%# Eval("Subject_ID")%>'></asp:Label>
                                        <asp:LinkButton ID="lnPrivate" runat="server">
                                    <asp:Image ID="iCourse"  ImageUrl='<%# "~/images/"+ Eval("Image")%>' runat="server" />
                                    </asp:LinkButton>
                                    </div>
                                    <div class="down-content">
                                        <h4><%# Eval("Nameofcar")%></h4>
                                        <span><%# Eval("Sub")%></span>
                                        <div class="line-dec"></div>
                                        <p><%# Eval("Createdate")%></p>
                                        <div class="line-dec"></div>
                                        <p><%# Eval("UserName")%></p>
                                    </div>
                                </div>
                            </div>
                            </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>

    <%--<asp:GridView ID="gvSubject" Visible="false" CssClass="table table-bordered table-hover" 
        Width="70%" align="Center" AutoGenerateColumns="False" 
        DataKeyNames="Subject_ID" runat="server" 
        onselectedindexchanged="gvSubject_SelectedIndexChanged" >
             <Columns>
             <asp:TemplateField HeaderText="الموضوعات">
             <ItemTemplate>
                 <asp:LinkButton ID="lbSubject" CommandName="select" CausesValidation="false" runat="server" Text='<%# Eval("Sub") %>'></asp:LinkButton>
             </ItemTemplate>
             </asp:TemplateField>

             <asp:TemplateField HeaderText="اسم المستخدم">
             <ItemTemplate>
                 <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
             </ItemTemplate>
             </asp:TemplateField>
              
             <asp:TemplateField HeaderText="تاريخ النشر">
             <ItemTemplate>
                 <asp:Label ID="lblDate" runat="server" Text='<%# Eval("CreateDate") %>'></asp:Label>
             </ItemTemplate>
             </asp:TemplateField>
             </Columns>
    </asp:GridView>--%>



    <div class="blog-page">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="sign-part">
                                <div class="item">
                                    <div class="row">
                                        <asp:LinkButton ID="lbLog" style="color:rgba(255, 186, 0, 0.9);font-size:x-large" runat="server" PostBackUrl="~/LogIn.aspx">يجب أن تقوم بتسجيل الدخول أولا</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>




    </asp:Content>
