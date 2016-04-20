<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%= Html.Kendo().DataSource
    <Kendo.Mvc.Examples.Models.ProductViewModel>()
        .Name("dataSource1")
        .Ajax(dataSource => dataSource
            .Read(read => read.Action("Products_Read", "DataSource")))
        .ServerFiltering(false)        
    %>

    <%= Html.Kendo().AutoComplete()
        .Name("autoComplete")
        .DataTextField("ProductName")
        .Filter(FilterType.Contains)
        .MinLength(2)
        .DataSource("dataSource1")       
    %>

    <%= Html.Kendo().Grid<Kendo.Mvc.Examples.Models.ProductViewModel>()
        .Name("grid")
        .Columns(columns =>
        {
            columns.Bound(p => p.ProductName);
            columns.Bound(p => p.UnitPrice).Format("{0:c}").Width(100);
            columns.Bound(p => p.UnitsInStock).Width(100);
            columns.Bound(p => p.Discontinued).Width(100);
        })
        .Pageable()
        .Scrollable()
        .DataSource("dataSource1")
    %>

<style>
    #grid {
        margin-top: 10px;
    }
</style>
</asp:Content>
