<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="BGAdd.aspx.cs" Inherits="SampleWebApplication.BGAdd" %>

<asp:Content ID="BGAdd" runat="server"  ContentPlaceHolderID="ContentPlaceHolder2">

   <h2 style="top: 124px; z-index: 1; left:10px; position: absolute; height: 26px; width: 1354px;color:black"> New Backgroud Details </h2>
    <asp:Label ID="Head" runat="server" Text="Add Background Verification Details" ForeColor="Tomato" Font-Bold="true" style="z-index: 1; left: 99px; font-size:larger; top: 189px; position: absolute"></asp:Label>
    <div class="col-md-2" style="z-index: 1; left: 82px; top: 238px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Name" runat="server" Text="Name" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
          <asp:TextBox ID="txtName" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="BGval" ></asp:TextBox>
    <asp:Label ID="rcode" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 62px; top: -10px; position: absolute; width: 8px"></asp:Label><br />
        <asp:RequiredFieldValidator ID="reqCode1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter Name"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="BGval" ></asp:RequiredFieldValidator>
          </div>


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 300px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="lblRole" runat="server" Text="Job Title" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
        <asp:TextBox ID="txtRole" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="BGval" ></asp:TextBox>
   <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 75px; top: -3px; position: absolute; width: 8px"></asp:Label><br />
         <asp:RequiredFieldValidator ID="rl" runat="server" ControlToValidate="txtRole" ErrorMessage="Please enter Role"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="BGval" ></asp:RequiredFieldValidator> </div>


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 372px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Email" runat="server" Text="Email" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
        <asp:TextBox ID="txtemail" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="BGval" ></asp:TextBox>
   <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 72px; top: -6px; position: absolute; width: 8px"></asp:Label><br />
    <asp:RegularExpressionValidator ID="reemail"    runat="server"  ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="Please enter Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="z-index: 1; left: 510px; top: 0px; position: absolute" ValidationGroup="BGval" ></asp:RegularExpressionValidator>
    </div>


   


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 444px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Empstat" runat="server" Text="Employee Status" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black  ">:</b>
       <%-- <asp:TextBox ID="txtstatus" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="Recur" ></asp:TextBox>--%>
  <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 134px; top: -9px; position: absolute; width: 8px;height:19px"></asp:Label><br />
        <asp:DropDownList ID="txtstatus" runat="server" class="form-control" style="z-index: 1; left: 250px; top: -10px; position: absolute;height:41px; width: 209px;" ValidationGroup="BGval" >
            <asp:ListItem>Active</asp:ListItem>
            <asp:ListItem>Inactive</asp:ListItem>

        </asp:DropDownList>
         <asp:RequiredFieldValidator ID="pos11" runat="server" ControlToValidate="txtstatus" ErrorMessage="Please enter employee status"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="BGval" ></asp:RequiredFieldValidator> 
          </div>

    <div class="col-md-2" style="z-index: 1; left: 82px; top: 228px; position: absolute; height: 19px; width: 1354px">
       
         <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" style="z-index: 1; left: 134px; top: 305px; position: absolute" ValidationGroup="Recur" />
   
           </div>
</asp:Content>

