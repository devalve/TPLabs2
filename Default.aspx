﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPLabs2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <html>
    <head>
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container" style="max-width:500px">
            <asp:Menu ID="mainMenu" 
                runat="server"
                OnMenuItemClick="mainMenu_MenuItemClick"
                cssClass="navbar">
                <Items>
                    <asp:MenuItem Text="First value" Value="fv"></asp:MenuItem>
                    <asp:MenuItem Text="Operation" Value="op"></asp:MenuItem>
                    <asp:MenuItem Text="Second value" Value="sv"></asp:MenuItem>
                </Items>
                
            </asp:Menu>
            <form>
                <asp:MultiView ID="mainMultiV" runat="server" ActiveViewIndex="0">
                    <asp:View runat="server" ID="view1">
                         <div class="form-group">
                    <label for="text">First Value</label>

                    <asp:TextBox
                        runat="server"
                        ID="firstVal"
                        name="text"
                        class="form-control" />
                </div>
                    </asp:View>
                    <asp:View runat="server" ID="viewOp">
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
                    </asp:View>
                    <asp:View runat="server" ID="view2">
                        
                <div class="form-group">

                    <label for="text1">Second Value</label>
                    <asp:TextBox
                        runat="server"
                        ID="secondVal"
                        name="text1"
                        class="form-control" />
                </div>
              
                <div class="form-group" style="margin-top:20px">
                    <asp:Button
                        OnClick="submitBtn_Click"
                        ID="submitBtn"
                        Text="Calculate"
                        runat="server"
                        type="submit"
                        class="btn btn-success" />
                </div>
                    </asp:View>
                </asp:MultiView>
               
             
            </form>
            <asp:CustomValidator
                ValidateEmptyText="true"
                OnServerValidate="FirstValidator_ServerValidate"
                ForeColor="Red"
                ErrorMessage="Incorrect data or empty first value!"
                ControlToValidate="firstVal"
                runat="server" />
            <br />
            <asp:CustomValidator ValidateEmptyText="true"
                OnServerValidate="SecondValidator_ServerValidate"
                ID="secondValidator"
                ForeColor="Red"
                ErrorMessage="Incorrect data or empty second value!"
                ControlToValidate="secondVal"
                runat="server" />
            <br />
            <asp:RequiredFieldValidator ForeColor="Red"
                ErrorMessage="Choose operation!"
                ControlToValidate="operation"
                runat="server" />
        </div>
    </body>
    </html>




</asp:Content>

