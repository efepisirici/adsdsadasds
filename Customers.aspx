<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" MasterPageFile="~/SiteBase.master" Inherits="Customers" %>
<%@ Register Src="~/UserControls/CustomerDetails.ascx" TagPrefix="uc" TagName="CustomerDetails" %>
<asp:Content runat="server" ContentPlaceHolderID="PageTitlePartPlaceHolder">Suppliers</asp:Content>
<asp:Content ID="ContentHolder" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1>SUPPLIERS</h1>
    <dx:ASPxGridView ID="CustomersGridView" CssClass="gridView" runat="server" Width="100%" KeyFieldName="Id" AutoGenerateColumns="false" KeyboardSupport="true">
        <Styles Header-CssClass="gridViewHeader" Row-CssClass="gridViewRow" FocusedRow-CssClass="gridViewRowFocused" 
            RowHotTrack-CssClass="gridViewRow" FilterRow-CssClass="gridViewFilterRow" />
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Name" Width="20%" />
            <dx:GridViewDataTextColumn FieldName="Address" Width="22%" />
            <dx:GridViewDataTextColumn FieldName="City" Width="10%" />
            <dx:GridViewDataTextColumn FieldName="State" Width="8%" />
            <dx:GridViewDataTextColumn FieldName="PostalCode" Width="12%" />
            <dx:GridViewDataTextColumn FieldName="Phone" Width="15%" />
            <dx:GridViewDataTextColumn FieldName="Fax" Width="13%" />
        </Columns>
        <SettingsBehavior EnableRowHotTrack="True" AllowFocusedRow="True" AllowClientEventsOnLoad="false" />
        <SettingsPager PageSize="5" ShowEmptyDataRows="true">
            <NextPageButton Visible="false">
            </NextPageButton>
            <PrevPageButton Visible="false">
            </PrevPageButton>
            <Summary Visible="False" />
        </SettingsPager>
        <Settings ShowGroupPanel="False" GridLines="None" ShowFilterRow="true" ShowFilterRowMenu="true" />
        <ClientSideEvents Init="function(s,e){ s.Focus(); }" FocusedRowChanged="function (s, e) { 
                DataDependentControlHelper.UpdateControls(s);
            }" />
    </dx:ASPxGridView>
</asp:Content>
<asp:Content ID="BottomContent" runat="server" ContentPlaceHolderID="BottomContentPlaceHolder">
    <uc:CustomerDetails runat="server" ID="CustomerDetails" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="FooterRangeControlPlaceHolder" runat="Server">
    <div class="contentBox salesDateRangeContainer">
        <uc:FooterRangeControl runat="server" ID="FooterRangeControl" />
    </div>
</asp:Content>
