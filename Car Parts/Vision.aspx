<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Vision.aspx.cs" Inherits="Car_Parts.Vision" %>
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
إضافة رؤية ورسالة واستراتيجية</h2>
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
                                                            <label>الرؤية</label>
                                                            <asp:TextBox ID="txtVision" CssClass="input-sm" TextMode="MultiLine" placeholder="الرؤية ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtVision" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>الرسالة</label>
                                                   
                                                            <asp:TextBox ID="txtMess" class="input-sm" TextMode="MultiLine" placeholder="الرسالة ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtMess" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="form-group">
                                                            <label> الاستراتيجية </label>
                                                   
                                                            <asp:TextBox ID="txtStrategy" class="input-sm" TextMode="MultiLine" placeholder="الاستراتيجية ..." runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtStrategy" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>

                                                    </form>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                              
                                                    <asp:LinkButton ID="lbAddVis" style="background-color:#18428c;color:#ffffff" 
                                                        class="primary-button text-center btn-block btn-lg " runat="server" 
                                                        onclick="lbAddVis_Click"  >إضافة</asp:LinkButton>
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
 

</asp:Content>
