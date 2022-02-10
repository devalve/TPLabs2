<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPLabs2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <div class="container">
        <form>
            <div class="form-group">
                <label for="text">First Val</label>

                <asp:TextBox
                    runat="server"
                    ID="firstVal"
                    name="text"
                    class="form-control" />
            </div>
            <div class="form-group">
                <label for="text2">Operation</label>
                <asp:ListBox
                    runat="server" ID="operation" name="text2" type="text" class="form-control">
                    <asp:ListItem Value="+" />
                    <asp:ListItem Value="-" />
                    <asp:ListItem Value="*" />
                    <asp:ListItem Value="/" />
                </asp:ListBox>
            </div>
            <div class="form-group">

                <label for="text1">Second Val</label>
                <asp:TextBox
                    runat="server"
                    ID="secondVal"
                    name="text1"
                    class="form-control" />
            </div>
            <div class="form-group">
                <asp:CheckBox
                    Text="Is unsigned?"
                    runat="server"
                    ID="isUnsigned"
                    name="checkbox" />
            </div>
            <div class="form-group">
                <asp:Button
                    OnClick="submitBtn_Click"
                    ID="submitBtn"
                    Text="Calculate"
                    runat="server"
                    type="submit"
                    class="btn btn-success" />
            </div>
        </form>
        <asp:RequiredFieldValidator ForeColor="Red"
            ErrorMessage="Fill the first value!"
            ControlToValidate="firstVal"
            runat="server" />
        <br />
        <asp:CustomValidator ValidateEmptyText="true" 
                OnServerValidate="secondValidator_ServerValidate" 
            ID="secondValidator"
            ForeColor="Red"
            ErrorMessage="Incorrect data or empty field!"
            ControlToValidate="secondVal"
            runat="server" />
        <br />
        <asp:RequiredFieldValidator ForeColor="Red"
            ErrorMessage="Choose operation!"
            ControlToValidate="operation"
            runat="server" />
    </div>
  
</asp:Content>

