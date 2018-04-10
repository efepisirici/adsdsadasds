<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteBase.master" CodeFile="RevenueBySector.aspx.cs" Inherits="RevenueBySector" %>
<%@ Register Src="~/UserControls/VerticalBarChart.ascx" TagPrefix="uc" TagName="VerticalBarChart" %>
<%@ Register Src="~/UserControls/RevenueFooter.ascx" TagPrefix="uc" TagName="RevenueFooter" %>
<asp:Content runat="server" ContentPlaceHolderID="PageTitlePartPlaceHolder">Revenue By Sector</asp:Content>
<asp:Content ID="ContentHolder" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1 style="padding-left:46px;">REVENUE BY SECTOR</h1>
    <div style="height:300px">
        <div style="float: left">
            <uc:VerticalBarChart runat="server" ID="DailySalesPerformanceChart"
                CurrentTitle="Today" CurrentSeriesName="Today"
                PreviousSeriesName="Yesterday" PreviousTitle="Yesterday" IsCurrency="true"
                CustomPeriodTitle="Last Week" TitleFormatString="$ {0:0,}K" CrosshairFormatString="{S}: {V:c0}"
                ChartOffsetX="-46"
                Title="PURCHASE PERFORMANCE" Width="599" Height="300" SelectionInterval="Day" />
        </div>
        <div style="float: right">
            <uc:VerticalBarChart runat="server" ID="UnitSalesChart" Title="UNIT PURCHASES BY SECTOR" Width="600" Height="300"
                CurrentTitle="This Month" PreviousTitle="Last Month" CustomPeriodTitle="YTD" ChartOffsetX="-34"
                 CrosshairFormatString="{S}: {V}" TitleFormatString="{0}" SelectionInterval="Month" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="BottomContent" runat="server" ContentPlaceHolderID="BottomContentPlaceHolder">
    <uc:RevenueFooter runat="server" ID="ProductSalesRevenue" Title="SECTOR PURCHASE" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="FooterRangeControlPlaceHolder" runat="Server" >
    <div class="contentBox salesDateRangeContainer">
        <uc:FooterRangeControl runat="server" ID="FooterRangeControl" />
    </div>
</asp:Content>
