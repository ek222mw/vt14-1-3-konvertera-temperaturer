<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TempKonvertering_Labb1.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/Style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%/*Start Temperatur*/ %>
        <asp:Label ID="startLabel" runat="server" Text="StartTemperatur"></asp:Label><br />
        <asp:TextBox ID="startTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet är tomt"
             ControlToValidate="startTextBox"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mata in ett heltal"
             ControlToValidate="startTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Slut temperaturen måste vara större än min temperaturen"
            ControlToValidate="slutTextBox"  ControlToCompare="startTextBox" Operator="GreaterThan" Type="Integer"></asp:CompareValidator>
    </div>
        <div>
            <%/*Slut Temperatur*/ %>
            <asp:Label ID="slutLabel" runat="server" Text="SlutTemperatur"></asp:Label><br />
            <asp:TextBox ID="slutTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fältet är tomt"
                 ControlToValidate="slutTextBox"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Mata in ett Heltal"
                 ControlToValidate="slutTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        </div>
        <div>
            <%/*Temperatur steg*/ %>
            <asp:Label ID="stegLabel" runat="server" Text="Tempsteg"></asp:Label><br />
            <asp:TextBox ID="stegTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fältet är tomt"
                 ControlToValidate="stegTextBox"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Mata in ett heltal"
                 ControlToValidate="stegTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Temperatursteget måste vara mellan 1 och 100"
                 ControlToValidate="stegTextBox" MinimumValue="1" MaximumValue="100" Type="Integer"></asp:RangeValidator>
        </div>
        <div>
            <%/*Konvertering av Temperaturer*/ %>
            <asp:Label ID="typLabel" runat="server" Text="Typ av Konvertering"></asp:Label><br />
            <asp:Label runat="server" Text="Celsius till Fahrenheit:"></asp:Label>
            <asp:RadioButton ID="CelToFahrRadioButton" runat="server" GroupName="Vald_temp" Checked="true" /><br />
            <asp:Label runat="server" Text="Fahrenheit till Celsius:"></asp:Label>
            <asp:RadioButton ID="FahrToCelRadioButton" runat="server" GroupName="Vald_temp" />
        </div>
        <div>
            <%/*Konvertera knapp*/ %>
            <asp:Button ID="konvertButton" runat="server" Text="Konvertera" OnClick="konvertButton_Click"/>
        </div>
        <div>
            <%/*Temperatur tabell*/ %>
            <asp:Table ID="tempTable" runat="server" Visible="False">  
            <asp:TableHeaderRow ID="TableHeaderRow1" runat="server">  
                <asp:TableHeaderCell runat="server" ID="header1">&deg;C</asp:TableHeaderCell>  
                <asp:TableHeaderCell runat="server" ID="header2">&deg;F</asp:TableHeaderCell>   
            </asp:TableHeaderRow>  
            </asp:Table>
        </div>
    </form>
</body>
</html>
