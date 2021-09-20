<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Customers.aspx.vb" Inherits="Bank.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        CUSTOMERS
    </title>
    <style>
        header {
            background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(back.jpg);
            height: 100vh;
            background-size: cover;
            background-position: center;
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
        .logo img {
    float: left;
    width: 150px;
    height: auto;
}

.main {
    max-width: 1200px;
    margin: auto;
}

        table {
            border-collapse: collapse;
            width: 100%;
            color: white;
            font-family: monospace;
            font-size: 25px;
            text-align: left;
        }

        th {
            background-color: darkblue;
            color: white;
        }
        

        tr:nth-child(even) {
            background-color: black;
        }
       .title {
    position: absolute;
    top: 15%;
    left: 50%;
    transform: translate(-50%, -50%);
}

    .title h3 {
        color: orange;
        font-size: 40px;
    }

        .title h3:hover {
            background-color: black;
        }
       
        
    </style>
</head>
<body>
     <header>
        <div class="main">
            <div class="logo">
                <img src="lll.png"/>
            </div>
            <ul>
                <li ><a href="Home.html">HOME</a></li>
                <li><a href="https://www.thesparksfoundationsingapore.org/">ABOUT GRIP</a></li>
                <li class="active"><a href="Cutomers.aspx">CUSTOMERS</a></li>
                <li><a href="Transiction.aspx">TRANSACTION</a></li>
                

            </ul>
        </div>
          <form id="form1" runat="server">
              <div class="title">     
         <h3>CUSTOMERS INFORMATION </h3>
 </div>
       <div class="GridView">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="S.NO" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="S.NO" HeaderText="S.NO" ReadOnly="True" SortExpression="S.NO" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="E-MAIL" HeaderText="E-MAIL" SortExpression="E-MAIL" />
                <asp:BoundField DataField="CONTACT-NO" HeaderText="CONTACT-NO" SortExpression="CONTACT-NO" />
                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            </Columns>
        </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Banking system %>" SelectCommand="SELECT * FROM [Detail]"></asp:SqlDataSource>
        </div>
    </form>
    </header>
   
   
         
</body>
</html>
