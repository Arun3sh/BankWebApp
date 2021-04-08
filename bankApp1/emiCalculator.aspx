<%@ Page Title="EMI Calculator" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="emiCalculator.aspx.cs" Inherits="bankApp1.emiCalculator"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/emiCalculator.css" rel="stylesheet" />
    <%--<script type="text/javascript" src="emiCalculatorjs.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="felxcontainer">
        
        <%--Loan Amount--%>

        <div id="lbl1">
            <asp:Label runat="server" ID="lblp" Text="Loan Amount :" ></asp:Label>
        </div>
        <div id="txtbox1">
            <asp:TextBox runat="server" ID="txtp" type="number" value="10000" ToolTip="Enter value between 10000 and 1000000" min="10000" max="1000000" placeholder="10000"  onchange="calculate()"></asp:TextBox>
        </div>

        <%--Loan Years--%>

        <div id="lbl2">
            <asp:Label runat="server" ID="lbln" Text="Years :" ></asp:Label>
        </div>
        <div id="txtbox2">
            <asp:TextBox runat="server" ID="txtn" type="number" value="1" ToolTip="From 1 year to 15 years maximum " min="1" max="15" placeholder="1" onchange="calculate()"></asp:TextBox>
        </div>
   
        <%--Rate of Interest--%>
        <div id="lbl3">
            <asp:Label runat="server" ID="lblr" Text="Rate of Interest :" ></asp:Label>
        </div>
        <div id="txtbox3">
            <asp:TextBox runat="server" ID="txtr" type="number" value="7" ToolTip="Interest from 7% to 21%" min="7" max="21" placeholder="7" onchange="calculate()"></asp:TextBox>
        </div>

        <%--Calculate Button
        <div id="btn">
            
        <asp:Button runat="server" Text="Calculate" ID="Button1" OnClientClick="return calculate()"/>
        </div>--%>
    </div>

    <div id="info-container">
        <div id="emibox">
            <h3 id="emi">Emi per month</h3>
            <h5 id="emivalue"></h5>
        </div>
        <div id="interestbox">
            <h3>Total Interest</h3>           
            <%--<asp:Label runat="server" ID="lbltotalinterest" Text="Total Interest :"></asp:Label>--%>
            <h5 id="totalinterest"></h5>
        </div>
        <div id="amountbox">
            <h3>Total Amount<br/>(Interest + Principal)</h3>           
            <%--<asp:Label runat="server" ID="lblamount" Text="Total Amount (Interest + Principal) :" />--%>
            <h5 id="totalamount"></h5>
        </div>
    </div>

    <div id="content-container">
            <h3 id="content-heading">What is EMI?</h3>
            <p>Equated Monthly Installment - EMI for short - is the amount payable every month to the bank or any other financial institution until the loan amount is fully paid off. It consists of the interest on loan as well as part of the principal amount to be repaid. The sum of principal amount and interest is divided by the tenure, i.e., number of months, in which the loan has to be repaid. This amount has to be paid monthly. The interest component of the EMI would be larger during the initial months and gradually reduce with each payment. The exact percentage allocated towards payment of the principal depends on the interest rate. Even though your monthly EMI payment won't change, the proportion of principal and interest components will change with time. With each successive payment, you'll pay more towards the principal and less in interest.</p>
            <p>Here's the formula to calculate EMI:</p>
            <p><img src="images/emiformula.png" /></p>
            <p>where<br />E is EMI<br />P is Principal Loan Amount<br />r is rate of interest calculated on monthly basis. (i.e., r = Rate of Annual interest/12/100. If rate of interest is 10.5% per annum, then r = 10.5/12/100=0.00875)<br />n is loan term / tenure / duration in number of months</p>
            <p>Computing EMI for different combinations of principal loan amount, interest rates and loan term using the above EMI formula by hand or MS Excel is time consuming, complex and error prone. Our EMI calculator automates this calculation for you and gives you the result in a split second along with visual charts displaying payment schedule and the break-up of total payment.</p>
    </div>
    <%--JAVASCRIPT--%>

<script type="text/javascript" >

    function calculate() {

        var p = document.getElementById("<%=txtp.ClientID%>").value;
        var y = document.getElementById("<%=txtn.ClientID%>").value;
        var tenure = document.getElementById("<%=txtr.ClientID%>").value;

        var n = y * 12;
        var r = (tenure / 1200);
        var halfequation = Math.pow((1 + r), n);
        var numerator = (p * r * halfequation);
        var denominator = (halfequation - 1);
        var emi = numerator / denominator;
        
        var totalamt = emi * n ;
        var total_interest = totalamt - p;

        document.getElementById("emivalue").innerHTML =  "₹ " + emi.toFixed(2);
        document.getElementById("totalinterest").innerHTML = "₹ " + total_interest.toFixed(0);
        document.getElementById("totalamount").innerHTML = "₹ " + totalamt.toFixed(0);

        //alert("Label Value is " + emi * 12);
       }
</script> 
</asp:Content>
