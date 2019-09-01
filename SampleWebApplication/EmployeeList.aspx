<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="EmployeeList.aspx.cs" Inherits="SampleWebApplication.EmployeeList" %>

<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="z-index: 1; left: 15px; top: 140px; position: absolute; height: 26px; width: 1354px;color:black">List of Employees</h2>
    <asp:GridView AutoGenerateColumns="False" runat="server" ID="GridViewList"   CellPadding="4" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 177px; top: 210px; position: absolute; height: 400px; width: 704px" on>

        <AlternatingRowStyle BackColor="White" />

        <Columns>
            <asp:BoundField headerstyle-width="120px" headertext="First Name"  DataField="firstName">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
                        <asp:BoundField headerstyle-width="120px" headertext="Last Name" DataField="lastName">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
            <asp:BoundField headerstyle-width="120px" headertext="Gender"  DataField="Gender">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
                        <asp:BoundField headerstyle-width="120px" headertext="Email" DataField="email">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
             <asp:BoundField headerstyle-width="120px" headertext="City" DataField="city">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
            <asp:TemplateField >
                <ItemTemplate>
                    <asp:LinkButton Text="Delete"  runat="server"  OnClick="OnDelete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <EditRowStyle BackColor="#2461BF" />

        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>


</asp:Content>
