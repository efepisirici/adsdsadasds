<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>
<%@ Register Src="~/UserControls/Common/HeaderMenu.ascx" TagPrefix="uc" TagName="HeaderMenu" %>

<div style="float: right;">
    <uc:HeaderMenu runat="server" ID="HeaderMenu" />
</div>
<div class="clear"></div>
