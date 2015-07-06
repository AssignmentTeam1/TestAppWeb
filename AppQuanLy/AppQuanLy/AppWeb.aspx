<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AppWeb.aspx.vb" Inherits="AppQuanLy.AppWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="MaKH" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" style="margin-left: 355px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" 
                    ShowHeader="True" Text="Select" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" 
                    ShowHeader="True" Text="Edit" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" 
                    ShowHeader="True" Text="Update" />
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" 
                    SortExpression="MaKH" />
                <asp:BoundField DataField="HoDem" HeaderText="HoDem" SortExpression="HoDem" />
                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" 
                    SortExpression="DiaChi" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 355px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 16px" 
            Text="Search" />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" CellPadding="4" DataKeyNames="MaKH" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Height="50px" style="margin-left: 355px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" 
                    SortExpression="MaKH" />
                <asp:BoundField DataField="HoDem" HeaderText="HoDem" SortExpression="HoDem" />
                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" 
                    SortExpression="DiaChi" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" 
            DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @original_MaKH AND [HoDem] = @original_HoDem AND [TenKH] = @original_TenKH AND [DiaChi] = @original_DiaChi AND [Email] = @original_Email AND [SDT] = @original_SDT" 
            InsertCommand="INSERT INTO [KhachHang] ([MaKH], [HoDem], [TenKH], [DiaChi], [Email], [SDT]) VALUES (@MaKH, @HoDem, @TenKH, @DiaChi, @Email, @SDT)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [KhachHang]" 
            UpdateCommand="UPDATE [KhachHang] SET [HoDem] = @HoDem, [TenKH] = @TenKH, [DiaChi] = @DiaChi, [Email] = @Email, [SDT] = @SDT WHERE [MaKH] = @original_MaKH AND [HoDem] = @original_HoDem AND [TenKH] = @original_TenKH AND [DiaChi] = @original_DiaChi AND [Email] = @original_Email AND [SDT] = @original_SDT">
            <DeleteParameters>
                <asp:Parameter Name="original_MaKH" Type="String" />
                <asp:Parameter Name="original_HoDem" Type="String" />
                <asp:Parameter Name="original_TenKH" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_SDT" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="HoDem" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoDem" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="original_MaKH" Type="String" />
                <asp:Parameter Name="original_HoDem" Type="String" />
                <asp:Parameter Name="original_TenKH" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_SDT" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
