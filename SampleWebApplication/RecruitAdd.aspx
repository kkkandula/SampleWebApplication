<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="RecruitAdd.aspx.cs" Inherits="SampleWebApplication.RecruitAdd" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="top: 124px; z-index: 1; left:10px; position: absolute; height: 26px; width: 1354px;color:black"> New Recruitment </h2>
    <asp:Label ID="Head" runat="server" Text="Add Job Details" ForeColor="Tomato"  Font-Bold="true" style="z-index: 1; left: 99px; top: 189px ; font-size:larger; position: absolute"></asp:Label>
    <div class="col-md-2" style="z-index: 1; left: 82px; top: 238px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="ReqCode" runat="server" Text="Requsition Code" Font-Bold="true" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
          <asp:TextBox ID="txtReqcode" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="Recur" ></asp:TextBox>
    <asp:Label ID="rcode" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 132px; top: -3px; position: absolute; width: 8px"></asp:Label><br />
        <asp:RequiredFieldValidator ID="reqCode1" runat="server" ControlToValidate="txtReqcode" ErrorMessage="Please enter Requistion Code"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="Recur" ></asp:RequiredFieldValidator>
          </div>


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 300px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Role" runat="server" Text="Role"  Font-Bold="true" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
        <asp:TextBox ID="txtRole" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="Recur" ></asp:TextBox>
   <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 54px; top: -3px; position: absolute; width: 8px"></asp:Label><br />
         <asp:RequiredFieldValidator ID="rl" runat="server" ControlToValidate="txtRole" ErrorMessage="Please enter Role"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="Recur" ></asp:RequiredFieldValidator> </div>


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 372px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Approver1" runat="server" Text="Approver-1"  Font-Bold="true" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
        <asp:TextBox ID="txtapp" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="Recur" ></asp:TextBox>
   <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 99px; top: -6px; position: absolute; width: 8px"></asp:Label><br />
         <asp:RequiredFieldValidator ID="app" runat="server" ControlToValidate="txtapp" ErrorMessage="Please enter Approver"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="Recur" ></asp:RequiredFieldValidator> 
         </div>


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 444px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Approver2" runat="server" Text="Approver-2"   Font-Bold="true" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
        <asp:TextBox ID="TextBox3" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="Recur" ></asp:TextBox>
    </div>


    <div class="col-md-2" style="z-index: 1; left: 82px; top: 516px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Pos" runat="server" Text="No.of Positions"  Font-Bold="true" ForeColor="black"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:black">:</b>
        <asp:TextBox ID="txtpos" runat="server" class="form-control"  autocomplete="off" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ValidationGroup="Recur" OnTextChanged="txtpos_TextChanged" ></asp:TextBox>
  <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" style="z-index: 1; left: 123px; top: 0px; position: absolute; width: 8px"></asp:Label><br />
        <asp:CompareValidator  runat="server" ControlToValidate="txtpos" operator="DataTypeCheck" Type="Integer" ErrorMessage="Please enter Integer" ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="Recur" ></asp:CompareValidator> 
       <%-- <asp:RequiredFieldValidator ID="pos11" runat="server" ControlToValidate="txtpos" ErrorMessage="Please enter Positions"  ForeColor="Red" style="z-index: 1; left: 515px; top: 9px; position: absolute" ValidationGroup="Recur" ></asp:RequiredFieldValidator> --%>
          </div>


    <%--<div class="col-md-2" style="z-index: 1; left: 82px; top: 228px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Label5" runat="server" Text="Requsition Code" ForeColor="White"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:white">:</b>
        <asp:TextBox ID="TextBox5" runat="server" class="form-control" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ></asp:TextBox>
    </div>--%>


   <%-- <div class="col-md-2" style="z-index: 1; left: 82px; top: 228px; position: absolute; height: 19px; width: 1354px">
        <asp:Label ID="Label6" runat="server" Text="Requsition Code" ForeColor="White"></asp:Label>
        <b style="position:absolute; top: 1px; left: 161px;color:white">:</b>
        <asp:TextBox ID="TextBox6" runat="server" class="form-control" style="z-index: 1; left: 250px; top: -5px; position: absolute;height:19px" ></asp:TextBox>
    </div>--%>

     <div class="col-md-2" style="z-index: 1; left: 82px; top: 228px; position: absolute; height: 19px; width: 1354px">
       
         <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" style="z-index: 1; left: 129px; top: 357px; position: absolute" ValidationGroup="Recur" />
   
           </div>

</asp:Content>