<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="depositInterest.aspx.cs" Inherits="bankApp1.depositInterest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/depositInterest.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="calculatorContainer">
        <div id="typeOfCustomer">
            <asp:label ID="td" runat="server" Text="Type of Citizen"/>
            <asp:RadioButtonList ID="citizenList" runat="server" >
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Senior Citizen</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div id="typeOfDeposit"></div>
        <div id="inputAmount"></div>
        <div id="tenurePeriod"></div>
    </div>
</asp:Content>
