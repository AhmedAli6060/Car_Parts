<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Services.aspx.cs" Inherits="Car_Parts.Services1" %>

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
                                    خدماتنا</h2>
                                <span>ماهي الخدمات المقدمة للعملاء من الأفراد واصحاب التشاليح والموزعين ومندوبين قطع
                                    الغيار</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="services-second">
        <div class="container">
            <div class="row">
                <div class="sep-section-heading-1">
                    <h3>
                        خدماتنا</h3>
                </div>
                <div class="col-md-4">
                    <div class="service-item">
                        <div class="text-content">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:ListView ID="lvServices" runat="server" DataSourceID="SqlDataSource1">
                                        <AlternatingItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <i class="fa fa-compass"></i>
                                                    <h6>
                                                        <asp:TextBox ID="Label2" Style="color: #272727; font-size: large; border: none; background-color: White;
                                                            width: 200px" Enabled="false" runat="server" Text='<%# Eval("ServName") %>'></asp:TextBox></h6>
                                                    <br />
                                                    <div class="line-dec-second">
                                                    </div>
                                                </td>
                                                <td>
                                                    <p>
                                                        <asp:TextBox TextMode="MultiLine" Style="border: none; resize: none; height: 100px;
                                                            background-color: White; width: 300px; font-size: medium" Enabled="false" ID="Label3"
                                                            runat="server" Text='<%# Eval("Service") %>'></asp:TextBox></p>
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </AlternatingItemTemplate>
                                        <EditItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ServNameTextBox" runat="server" Text='<%# Bind("ServName") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ServiceTextBox" runat="server" Text='<%# Bind("Service") %>' />
                                                </td>
                                            </tr>
                                        </EditItemTemplate>
                                        <EmptyDataTemplate>
                                            <table style="" runat="server">
                                                <tr>
                                                    <td>
                                                        No data was returned.
                                                    </td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <InsertItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ServNameTextBox" runat="server" Text='<%# Bind("ServName") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ServiceTextBox" runat="server" Text='<%# Bind("Service") %>' />
                                                </td>
                                            </tr>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <i class="fa fa-support"></i>
                                                    <h6>
                                                        <asp:Label ID="Label2" Style="color: #272727; font-size: large; width: 400px" runat="server"
                                                            Text='<%# Eval("ServName") %>' /></h6>
                                                    <br />
                                                    <div class="line-dec-second">
                                                    </div>
                                                </td>
                                                <td>
                                                    <p>
                                                        <asp:TextBox TextMode="MultiLine" Enabled="false" Style="border: none; resize: none;
                                                            height: 100px; background-color: White; width: 300px; font-size: medium" ID="Label3"
                                                            runat="server" Text='<%# Eval("Service") %>' /></p>
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <table id="Table1" runat="server" border="0" style="">
                                                <tr id="itemPlaceholderContainer" runat="server">
                                                    <td id="itemPlaceholder" runat="server">
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="">
                                                <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonCssClass="btn btn-info" NextPageText="التالي" PreviousPageText="السابق" ButtonType="Link" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </div>
                                        </LayoutTemplate>
                                        <SelectedItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Label ID="ServNameLabel" runat="server" Text='<%# Eval("ServName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="ServiceLabel" runat="server" Text='<%# Eval("Service") %>' />
                                                </td>
                                            </tr>
                                        </SelectedItemTemplate>
                                    </asp:ListView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Auto PartsConnectionString %>"
                                        SelectCommand="SELECT [ServName], [Service] FROM [Services]"></asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ser2">
        <div class="row">
            <div class="col-md-12">
                <div class="resala">
                    <div class="col-md-6">
                        <div class="resala-section">
                            <div class="resala-section-title">
                                الرؤية</div>
                            <div class="resala-section-content">
                                <p>
                                    <asp:Label ID="lblVesion" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="resala-section">
                            <div class="resala-section-title">
                                الرسالة</div>
                            <div class="resala-section-content">
                                <p>
                                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="more-about-us">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="images/about-image.jpg" alt="">
                </div>
                <div class="col-md-6">
                    <div class="right-content">
                        <h4>
                            استراتيجية العمل بموقع تشاليح وقطع غيار</h4>
                        <div class="line-dec-third">
                        </div>
                        <p>
                            <asp:Label ID="lblStragety" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
