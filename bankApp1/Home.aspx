<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="bankApp1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/homeLayout.css" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="container">
        <div id="title">
            <h1>Welcome to TheBank</h1>
        </div>
        <div id="main_content">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div id="first">
            <h2>EMI Calculator</h2>
            <ul>
                <li><a href="emiCalculator.aspx">Personal Loan Calculator</a></li>
                <li><a href="#">Fixed Deposit Calculator</a></li>
            </ul>
        </div>
        <div id="second">
            <h2>New Schemes</h2>
            <ol>
                <li>Atmanirbhar Bharat Abhiyan</li>
                <li>Mission Karmayogi</li>
                <li>Pradhan Mantri SVANidhi Scheme</li>
                <li>Formalization of Micro Food Processing Enterprises Scheme</li>
                <li>Kapila Kalam Program</li>
            </ol>
        </div>
        <div id="third">
            <h2>Latest News</h2>
            <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h5>
        </div>
        </div>
</asp:Content>
