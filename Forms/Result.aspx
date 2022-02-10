<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="TPLabs2.Forms.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <div>
           <h1>Answer is <% Response.Write(Request.QueryString["result"]); %></h1>
        </div>
</body>
</html>
