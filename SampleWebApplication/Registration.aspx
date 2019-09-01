<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SampleWebApplication.Registration" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>

        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Style="margin-bottom: 0px">
                    <h3 style="z-index: 1; left: 29px; top: 107px; position: absolute; height: 26px; width: 937px"></h3>
                    <div style="width: 54px; margin-right: 0px">
                        <h2 style="position: absolute; bottom: 658px; top: 126px; color: black">Create Employee</h2>
                        <div class="col-md-2" style="z-index: 1; left: 16px; top: 16px; position: absolute; height: 19px; width: 1354px">
                            <asp:Label ID="ftname" runat="server"
                                Style="z-index: 1; left: 20px; top: 206px; position: absolute; height: 26px; width: 100px; font-family: Arial; font-size: medium; font-variant-position: initial; color: black"
                                Text="First Name"><b>First Name</b></asp:Label>
                            <asp:Label ID="fna" runat="server" Text="*" ForeColor="Red" Style="z-index: 1; left: 102px; top: 206px; position: absolute; width: 8px"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtfname"  class="form-control" runat="server" autocomplete="off" CssClass="txtbox" Style="z-index: 1; left: 158px; top: 202px; position: absolute; height: 20px; width: 168px;"
                                ValidationGroup="Save"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Please enter First name" ForeColor="Red" Style="z-index: 1; left: 350px; top: 205px; position: absolute" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            <b>
                                <asp:Label ID="lbl1" Text=":" runat="server" Style="z-index: 1; left: 120px; top: 206px; position: absolute; height: 26px; width: 100px;"></asp:Label>
                            </b>
                        </div>



                        <div class="col-md-2" style="z-index: 1; left: 16px; top: 24px; position: absolute; height: 19px; width: 1354px">
                            <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Style="z-index: 1; left: 102px; top: 255px; position: absolute; width: 8px"></asp:Label>

                            <asp:Label ID="lstname" runat="server"
                                Style="z-index: 1; left: 20px; top: 255px; position: absolute; height: 26px; width: 100px; font-family: Arial; font-size: medium; font-variant-position: initial; color: black"
                                Text="Last Name"><b>Last Name</b></asp:Label>
                            <asp:TextBox ID="txtlname" class="form-control" runat="server" autocomplete="off" CssClass="txtbox" Style="z-index: 1; left: 157px; top: 251px; position: absolute; height: 20px; width: 172px;"
                                ValidationGroup="Save"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Please enter Last name" ForeColor="Red" Style="z-index: 1; left: 360px; top: 249px; position: absolute" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            <b>
                                <asp:Label ID="Label2" Text=":" runat="server" Style="z-index: 1; left: 120px; top: 255px; position: absolute; height: 26px; width: 100px;"></asp:Label>
                            </b>
                        </div>
                        <div class="col-md-2" style="z-index: 1; left: 16px; top: 24px; position: absolute; height: 19px; width: 1354px">
                            <asp:Label ID="gender" runat="server"
                                Style="z-index: 1; left: 20px; top: 306px; position: absolute; height: 32px; width: 89px; font-family: Arial; font-size: medium; font-variant-position: initial; color: black"
                                Text="Gender"><b>Gender</b></asp:Label>
                            <asp:RadioButtonList ID="rdbtn" runat="server" Font-Bold="true" Style="z-index: 1; left: 159px; top: 306px; position: absolute; height: 27px; width: 98px; color: black">
                                <asp:ListItem Selected="True">&nbsp; Male</asp:ListItem>
                                <asp:ListItem>&nbsp;Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <b>
                                <asp:Label ID="Label3" Text=":" runat="server" Style="z-index: 1; left: 120px; top: 306px; position: absolute; height: 26px; width: 100px;"></asp:Label>
                            </b>
                        </div>
                        <div class="col-md-2" style="z-index: 1; left: 16px; top: 24px; position: absolute; height: 19px; width: 1354px">
                            <asp:Label ID="email" runat="server"
                                Style="height: 32px; width: 100px; font-family: Arial; font-size: medium; font-variant-position: initial; color: black; z-index: 1; left: 20px; top: 357px; position: absolute;"
                                Text="Email"><b>Email</b></asp:Label>
                            <asp:TextBox ID="txtmail" class="form-control" runat="server" autocomplete="off" CssClass="txtbox" Style="z-index: 1; left: 162px; top: 357px; position: absolute; height: 20px; width: 169px;"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter Email" ForeColor="Red" Style="z-index: 1; left: 360px; top: 362px; position: absolute" ValidationGroup="Save"></asp:RegularExpressionValidator>
                            <b>
                                <asp:Label ID="Label4" Text=":" runat="server" Style="z-index: 1; left: 120px; top: 357px; position: absolute; height: 26px; width: 100px;"></asp:Label>
                            </b>
                        </div>
                        <div class="col-md-2" style="z-index: 1; left: 16px; top: 24px; position: absolute; height: 19px; width: 1354px">
                            <asp:Label ID="Selectcity" runat="server"
                                Style="z-index: 1; left: 20px; top: 408px; position: absolute; height: 22px; width: 100px; font-family: Arial; font-size: medium; font-variant-position: initial; color: black"
                                Text="Select City"><b>Select City</b></asp:Label>
                            <asp:DropDownList ID="city" runat="server" Style="z-index: 1; left: 165px; top: 408px; position: absolute; width: 94px;">
                                <asp:ListItem>Hyderabad</asp:ListItem>
                                <asp:ListItem>Bangalore</asp:ListItem>
                                <asp:ListItem>Chennai</asp:ListItem>
                            </asp:DropDownList>
                            <b>
                                <asp:Label ID="Label5" Text=":" runat="server" Style="z-index: 1; left: 120px; top: 408px; position: absolute; height: 26px; width: 100px;"></asp:Label>
                            </b>
                        </div>
                        <div class="col-md-2" style="z-index: 1; left: 16px; top: 24px; position: absolute; height: 19px; width: 1354px">
                            <asp:Button ID="save" class="btn btn-primary" runat="server" Style="z-index: 1; left: 82px; top: 481px; position: absolute; color: #FFFFFF; height: 32px; width: 141px;"
                                Text="Save"
                                BackColor="#2682B5" OnClick="btnSave_Click" ForeColor="#0000CC" ValidationGroup="Save" />


                        </div>


                    </div>

                </asp:Panel>
            </td>
            <td colspan="2" style="margin-left: 10px; margin-top: 10px">

                <asp:GridView ID="GridView1" Visible="false" AutoGenerateColumns="False" runat="server" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" Style="z-index: 1; left: 524px; top: 172px; position: absolute; width: 730px; color: black" BackColor="White" CellPadding="3" CellSpacing="1" GridLines="None">
                    <Columns>

                        <asp:BoundField HeaderStyle-Width="120px" HeaderText="First Name" DataField="FirstName">
                            <HeaderStyle Width="120px"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderStyle-Width="120px" HeaderText="Last Name" DataField="LastName">
                            <HeaderStyle Width="120px"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderStyle-Width="120px" HeaderText="Gender" DataField="Gender1">
                            <HeaderStyle Width="120px"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderStyle-Width="120px" HeaderText="Email" DataField="Email1">
                            <HeaderStyle Width="120px"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderStyle-Width="120px" HeaderText="City" DataField="City1">
                            <HeaderStyle Width="120px"></HeaderStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
