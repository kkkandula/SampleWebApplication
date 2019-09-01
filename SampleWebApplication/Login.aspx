<%@ Page Language="C#" MasterPageFile="~/Home.Master"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SampleWebApplication.Login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
  
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1"  >

  
   
    <table  >
        <tr>
            <td  >
                <h2  style="z-index: 1; left: 457px; top: 151px; position: absolute; height: 26px; width: 150px;font-family:Arial;color: white; ">Login Form</h2>

                
                <asp:Label class="label  " ID="Label1" runat="server"
                    Style="z-index: 1; left: 325px; top: 255px; position: absolute; height: 20px; width: 141px; font-family: Arial; font-size: medium; font-variant-position: initial; color: #FFFFFF"
                    Text="Username"> </asp:Label>


                <asp:Label class="label " ID="Label3" runat="server"  
            style="z-index: 1; left: 324px; top: 337px; position: absolute; width: 141px; height: 20px; font-family:Arial;font-size:medium;font-variant-position:initial; margin-top: 0px;" Text="Password"></asp:Label>
               
                    <asp:RequiredFieldValidator ID="login" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter Username" ForeColor="Red" style="z-index: 1; left: 797px; top: 255px; position: absolute" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                          
                 <asp:TextBox class="form-control input-lg" ID="txtUsername" runat="server" placeholder="Enter UserName" autocomplete="off" CssClass="txtbox" Style="z-index: 1; left: 514px; top: 251px; position: absolute; height: 32px; width: 260px;" ValidationGroup="LoginGroup"></asp:TextBox>
               <asp:TextBox class="form-control input-lg"  ID="txtPassword" runat="server" placeholder="Enter Password" autocomplete="off" CssClass="txtbox"
                    Style="z-index: 1; left: 514px; top: 330px; position: absolute; height: 32px; width: 261px; margin-top: 2px;" TextMode="Password" ValidationGroup="LoginGroup"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter password" ForeColor="Red" style="z-index: 1; left: 802px; top: 336px; position: absolute" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                <asp:Button CssClass="btn btn-primary" ID="btnLogin" runat="server" Style="z-index: 1; left: 427px; top: 454px; position: absolute; color: #FFFFFF; height: 32px; width: 141px;"
                    Text="Login"
                    BackColor="#2682B5" OnClick="btnLogin_Click" ForeColor="#0000CC" ValidationGroup="LoginGroup" />
               
                <asp:Label ID="MsgLabel" runat="server" style="z-index: 1;color:red; left: 615px; top: 461px; position: absolute"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>
            
               </td>
        </tr>
    </table>
    <table>
        <tr>
           
                 <td colspan="2">

                    <div>
                        <asp:gridview id="gridView1" style="position: absolute; left: 996px; top: 153px; width: 265px; height: 311px;" autogeneratecolumns="False"  runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" ForeColor="Black" >

                            <AlternatingRowStyle BackColor="PaleGoldenrod" />

                    <columns>
                        <asp:BoundField headerstyle-width="120px" headertext="Username"  DataField="username">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
                        <asp:BoundField headerstyle-width="120px" headertext="Password" DataField="password">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
                         <asp:BoundField headerstyle-width="120px" headertext="Role" DataField="role">
                            <headerstyle width="120px"></headerstyle>
                        </asp:BoundField>
                    </columns>


                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />


                </asp:gridview>
                    </div>
                
                     
            </td>
        </tr>
    </table>
  
</asp:Content>

