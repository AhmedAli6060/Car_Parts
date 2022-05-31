<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Lists(USA).aspx.cs" Inherits="Car_Parts.Lists" %>

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
                                    قسم تشليح السيارات الأمريكية</h2>
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="recent-car">
                <div class="container">
                    <div class="recent-car-content">
                        <div class="row">
                        <div class="submit-coment col-md-12">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="btnSearch" CssClass="btn btn-warning btn-lg" runat="server" 
                                        Text="بحث" onclick="btnSearch_Click" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSearch" class="form-control input-lg" placeholder="اسم القطعة ..."
                                        runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div>
                            <asp:Repeater ID="rParts" runat="server">
                            <ItemTemplate>
                            
                            <div class="col-md-4">
                                <div class="car-item">
                                    <div class="thumb-content">
                                    <asp:Image ID="iCourse"  ImageUrl='<%# "~/images/"+ Eval("Image")%>' runat="server" />
                                    </div>
                                    <div class="down-content">
                                        <h4><%# Eval("NameOFPart")%></h4>
                                        <span><%# Eval("Price") + " ريال " %></span>
                                        <div class="line-dec"></div>
                                        <p><%# Eval("Description")%></p>
                                    </div>
                                </div>
                            </div>
                            </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
 
</asp:Content>
