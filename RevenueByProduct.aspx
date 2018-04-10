<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteBase.master" CodeFile="RevenueByProduct.aspx.cs" Inherits="RevenueByProduct" %>
<%@ Register Src="~/UserControls/VerticalBarChart.ascx" TagPrefix="uc" TagName="VerticalBarChart" %>
<%@ Register Src="~/UserControls/RevenueFooter.ascx" TagPrefix="uc" TagName="RevenueFooter" %>
<asp:Content runat="server" ContentPlaceHolderID="PageTitlePartPlaceHolder">Revenue By Product</asp:Content>
<asp:Content ID="ContentHolder" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1 style="padding-left: 46px;">REVENUE BY PRODUCT</h1>
    <div style="height: 300px">
        <div style="float: left">
            <uc:VerticalBarChart runat="server" ID="DailySalesPerformanceChart"
                CurrentTitle="Today" CurrentSeriesName="Today"
                PreviousSeriesName="Yesterday" PreviousTitle="Yesterday" IsCurrency="true"
                CustomPeriodTitle="Last Week" TitleFormatString="$ {0:0,}K" CrosshairFormatString="{S}: {V:c0}"
                Title="DAILY PURCHASES PERFORMANCE" Width="599" Height="300" SelectionInterval="Day" ChartOffsetX="-45" />
        </div>
        <div style="float: right">
            <uc:VerticalBarChart runat="server" ID="UnitSalesChart" Title="UNIT PURCHASE BY PRODUCT" Width="600" Height="300"
                CurrentTitle="This Month" PreviousTitle="Last Month" CustomPeriodTitle="YTD"
                CrosshairFormatString="{S}: {V}" TitleFormatString="{0}" SelectionInterval="Month" ChartOffsetX="-24" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="BottomContent" runat="server" ContentPlaceHolderID="BottomContentPlaceHolder">
    <uc:RevenueFooter runat="server" ID="ProductSalesRevenue" Title="PRODUCT PURCHASES" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="FooterRangeControlPlaceHolder" runat="Server">
    <div class="contentBox salesDateRangeContainer">
        <uc:FooterRangeControl runat="server" ID="FooterRangeControl" />
    </div>
</asp:Content>
