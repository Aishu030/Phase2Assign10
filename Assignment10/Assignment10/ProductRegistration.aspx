<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assignment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Assignment10</title>
     <style type="text/css">
         .auto-style1 {
             width: 231px;
         }
         .auto-style2 {
             width: 231px;
             height: 24px;
         }
         .auto-style3 {
             height: 24px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
            
                    <div class ="col-md-4"><h2>Product Registration Form</h2></div>
           
                   <div class ="col-md-4"><asp:Image runat="server" ID="Image3" ImageUrl="~/Images/1.jpg"
                       width="300" Height="300" CssClass ="img-fluid" /></div>
        </div>
        
         <table class="w-100">
             <tr>
                 <td class="auto-style1">Product Name</td>
                 <td>
                     <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the product name first!!!" ForeColor="Red" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Category</td>
                 <td class="auto-style3">
                     <asp:DropDownList ID="DdlCategory" runat="server">
                     </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Category!!!" ForeColor="Red" ControlToValidate="DdlCategory"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">Price</td>
                 <td>
                     <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RfvPrice" runat="server" ErrorMessage=" Price is Required!!!" ForeColor="Red" ControlToValidate="TxtPrice"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="revPrice" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Price must be a numeric value!!" ForeColor="Red" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">Description</td>
                 <td>
                     <asp:TextBox ID="TxtDesc" runat="server" Height="98px" TextMode="MultiLine" Width="322px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDesc" ErrorMessage="Please Enter the Description!!" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">Release Date</td>
                 <td>
                     <asp:Calendar ID="CalDate" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                         <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                         <DayStyle Width="14%" />
                         <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                         <OtherMonthDayStyle ForeColor="#999999" />
                         <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                         <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                         <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                         <TodayDayStyle BackColor="#CCCC99" />
                     </asp:Calendar>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style1">&nbsp;</td>
                 <td>
                     <asp:Button ID="BtnRegister" runat="server" Height="49px" OnClick="BtnRegister_Click" Text="Register" Width="183px" />
                 </td>
             </tr>
             <tr>
                 <td colspan="2">
                     <asp:Label ID="LblInfo" runat="server" Text="Label"></asp:Label>
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" />
                 </td>
             </tr>
         </table>
        
    </form>
</body>
</html>
