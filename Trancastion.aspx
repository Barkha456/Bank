<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Transiction.aspx.vb" Inherits="Bank.Transiction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        TRANSACTION
    </title>
    <style>
 header {
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(back.jpg);
    height: 100vh;
    background-size: cover;
    background-position: center;
}
 .logo img {
    float: left;
    width: 150px;
    height: auto;
}
 .main {
    max-width: 1200px;
    margin: auto;
}

 ul {
    list-style-type: none;
    float: right;
    margin-top: 35px;
}

    ul li {
        display: inline-block;
    }

        ul li a {
            text-decoration-style: solid;
            color: white;
            padding: 5px 20px;
            border: 1px solid transparent;
            transition: 0.6s ease;
        }

        ul li.active a {
            background-color: orange;
            color: black;
        }

        ul li a:hover {
            background-color: orange;
            color: black;
        }
        .name{
            
            position: absolute;
            top: 20%;
            left: 40%;
            transform: translate(-50%, -50%);
            color: white;
            text-align :center;

        }
        .GridView1{
          
            color: white;
            font-family: Arial;
            font-size: 25px;
            text-align: center;
        }
        .auto-style1{
            position: absolute;
            top: 30%;
            left: 66%;
            transform: translate(-50%, -50%);
            height: 220px;
            width: 382px;
            margin-top: 0px;
            margin-right: 0px;
        }
        
        .auto-style3 {
             position: absolute;
            top: 55%;
            left: 66%;
            transform: translate(-50%, -50%);
            height: 220px;
            width: 100%;
             width: 382px;
            margin-top: 0px;
            margin-right: 0px;
        }
        .G{
            position: absolute;
            top: 60%;
            left: 48%;
            width: 131%
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
        <div class="main">
            <div class="logo">
                <img src="lll.png"/>
</div>
            <ul>
                 <li><a href="Home.html">HOME</a></li>
                 <li><a href="https://www.thesparksfoundationsingapore.org/">ABOUT GRIP</a></li>
                <li><a href="Customers.aspx">CUSTOMERS</a></li>
                <li class="active"><a href="Transiction.aspx">TRANSACTION</a></li>
                 
                
            </ul>
        </div>
            <div  class="c">
                 <table class="auto-style1">
                     <tr>
                         <td>
                             <asp:Label ID="Label2" runat="server" Text="SENT TO" BorderColor="Black"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="138px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label3" runat="server" Text="SEND FROM" BorderColor="Black"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="138px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label4" runat="server" Text="AMOUNT" BorderColor="Black"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="138px"></asp:TextBox>
                             </td>
                     </tr>
                 </table>
                </div>
                <table class="auto-style3">
                    <tr>
                        <td>
                            <center>
                                <asp:Button ID="Button1" runat="server" Text="TRANSFER" BackColor="Black" BorderColor="Black" Height="36px" Width="216px" Font-Bold="True" ForeColor="White" />
                               
                                </td>
                                </tr>
                    </table>
          
            <div class="G">
                <asp:GridView ID="GridView1" runat="server" CellPadding="3" Width="626px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </div>
            </header>
       
        
    </form>
</body>
</html>
