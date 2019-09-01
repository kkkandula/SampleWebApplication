 <%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SampleWebApplication.Admin" %>

<asp:Content ID="BG" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h2 style="top: 157px; z-index: 1; left: 6px; position: absolute; height: 26px; width: 1354px; color: black">BackGround Verification Details</h2>
    <asp:HyperLink runat="server" ID="Hyperlink1" NavigateUrl="~/BGAdd.aspx" Style="z-index: 1; left: 698px; top: 227px; position: absolute; height: 19px; color: tomato"><b>Add </b> </asp:HyperLink>

    <asp:GridView ID="BGGrid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Style="z-index: 1; left: 103px; top: 264px; position: absolute; height: 181px; width: 640px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderStyle-Width="120px" HeaderText="Name" DataField="Name">
                <HeaderStyle Width="120px"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField HeaderStyle-Width="190px" HeaderText="Background Status" DataField="BGStatus">
                <HeaderStyle Width="120px"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField HeaderStyle-Width="120px" HeaderText="Job Title" DataField="role">
                <HeaderStyle Width="120px"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField HeaderStyle-Width="120px" HeaderText="Email" DataField="email">
                <HeaderStyle Width="120px"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField HeaderStyle-Width="120px" HeaderText="Employee Status" DataField="EmpStatus">
                <HeaderStyle Width="120px"></HeaderStyle>
            </asp:BoundField>


        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>



</asp:Content>
