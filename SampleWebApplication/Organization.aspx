<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Organization.aspx.cs" Inherits="SampleWebApplication.Organization" %>


<asp:Content ID="content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="z-index: 1; left: 69px; top: 137px; position: absolute; height: 26px; width: 1354px;color:Black">Organization Details</h2>

    <asp:GridView ID="GridViewOrg" runat="server" AutoGenerateColumns="False" ShowHeader="False" style="z-index: 1; left: 191px; top: 204px; position: absolute; height: 350px; width: 786px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
             <asp:BoundField headerstyle-width="120px" ShowHeader="false"    DataField="name">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
                        <asp:BoundField headerstyle-width="120px"   ShowHeader="false" DataField="content">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
        </Columns>
        
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
</asp:Content>