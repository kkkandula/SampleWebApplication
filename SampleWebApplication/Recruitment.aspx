<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Recruitment.aspx.cs" Inherits="SampleWebApplication.Recruitment" %>


<asp:Content ID="Recruit" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="top: 124px; z-index: 1; left:10px; position: absolute; height: 26px; width: 1354px;color:black">  Recruitment Details</h2>
    <asp:HyperLink runat="server" ID="Hyperlink1" NavigateUrl="~/RecruitAdd.aspx" style="z-index: 1; left: 833px; top: 222px; position: absolute; height: 19px;color:tomato"><b>Add Job</b> </asp:HyperLink>
    <asp:GridView ID="Recru1" Width="700px" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="z-index: 1; left: 200px; top: 243px; position: absolute; height: 240px; width: 700px" >
   <Columns>
     <%--  <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" HeaderText="Operation" ItemStyle-Width="120px" />  --%>
        
                            <asp:BoundField HeaderStyle-Width="120px" HeaderText="Requisition Code" DataField="ReCode">  
                                    <HeaderStyle Width="120px"></HeaderStyle>  
                                </asp:BoundField>  
                                <asp:BoundField HeaderStyle-Width="120px" HeaderText="Job Title" DataField="JTitle">  
                                    <HeaderStyle Width="120px"></HeaderStyle>  
                                </asp:BoundField>  
                                <asp:BoundField HeaderStyle-Width="120px" HeaderText="Requisition Status" DataField="ReStatus">  
                                    <HeaderStyle Width="120px"></HeaderStyle>  
                                </asp:BoundField>  
                                <asp:BoundField HeaderStyle-Width="120px" HeaderText="Raised By" DataField="Raise">  
                                    <HeaderStyle Width="120px"></HeaderStyle>  
                                </asp:BoundField>  
                                <asp:BoundField HeaderStyle-Width="120px" HeaderText="No. of Positions" DataField="Pos">  
                                    <HeaderStyle Width="120px"></HeaderStyle>  
                                </asp:BoundField> 
                                 <asp:BoundField HeaderStyle-Width="120px" HeaderText="Filled Positions" DataField="FillPos">  
                                    <HeaderStyle Width="120px"></HeaderStyle>  
                                </asp:BoundField>  
       <asp:TemplateField >
           <ItemTemplate>
               <asp:LinkButton ID="delRecu" Text="Delete" runat="server" OnClick="OnDelete" ></asp:LinkButton>
           </ItemTemplate>

       </asp:TemplateField>
   </Columns>
        
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        
         </asp:GridView>



</asp:Content>