<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
            font-weight: bold;
        }
        body {
            margin: 0 auto;
            width: 80%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="auto-style1">
            THÔNG TIN DỮ LIỆU KHÁCH HÀNG<br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MATK" DataSourceID="SqlDataKH" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MATK" HeaderText="Mã tài khoản" ReadOnly="True" SortExpression="MATK" />
                <asp:BoundField DataField="TENTK" HeaderText="Tên tài khoản" SortExpression="TENTK" />
                <asp:BoundField DataField="MAT_KHAU" HeaderText="Mật khẩu" SortExpression="MAT_KHAU" />
                <asp:BoundField DataField="HO_TEN" HeaderText="Họ tên" SortExpression="HO_TEN" />
                <asp:BoundField DataField="NGAY_SINH" HeaderText="Ngày sinh" SortExpression="NGAY_SINH" />
                <asp:BoundField DataField="GIOI_TINH" HeaderText="Giới tính" SortExpression="GIOI_TINH" />
                <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" SortExpression="SDT" />
                <asp:BoundField DataField="DIA_CHI" HeaderText="DIA_CHI" SortExpression="DIA_CHI" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataKH" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [MATK] = @original_MATK AND [TENTK] = @original_TENTK AND [MAT_KHAU] = @original_MAT_KHAU AND [HO_TEN] = @original_HO_TEN AND [NGAY_SINH] = @original_NGAY_SINH AND [GIOI_TINH] = @original_GIOI_TINH AND [SDT] = @original_SDT AND [DIA_CHI] = @original_DIA_CHI AND [EMAIL] = @original_EMAIL" InsertCommand="INSERT INTO [KHACH_HANG] ([MATK], [TENTK], [MAT_KHAU], [HO_TEN], [NGAY_SINH], [GIOI_TINH], [SDT], [DIA_CHI], [EMAIL]) VALUES (@MATK, @TENTK, @MAT_KHAU, @HO_TEN, @NGAY_SINH, @GIOI_TINH, @SDT, @DIA_CHI, @EMAIL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KHACH_HANG]" UpdateCommand="UPDATE [KHACH_HANG] SET [TENTK] = @TENTK, [MAT_KHAU] = @MAT_KHAU, [HO_TEN] = @HO_TEN, [NGAY_SINH] = @NGAY_SINH, [GIOI_TINH] = @GIOI_TINH, [SDT] = @SDT, [DIA_CHI] = @DIA_CHI, [EMAIL] = @EMAIL WHERE [MATK] = @original_MATK AND [TENTK] = @original_TENTK AND [MAT_KHAU] = @original_MAT_KHAU AND [HO_TEN] = @original_HO_TEN AND [NGAY_SINH] = @original_NGAY_SINH AND [GIOI_TINH] = @original_GIOI_TINH AND [SDT] = @original_SDT AND [DIA_CHI] = @original_DIA_CHI AND [EMAIL] = @original_EMAIL">
            <DeleteParameters>
                <asp:Parameter Name="original_MATK" Type="Int32" />
                <asp:Parameter Name="original_TENTK" Type="String" />
                <asp:Parameter Name="original_MAT_KHAU" Type="String" />
                <asp:Parameter Name="original_HO_TEN" Type="String" />
                <asp:Parameter Name="original_NGAY_SINH" Type="String" />
                <asp:Parameter Name="original_GIOI_TINH" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_DIA_CHI" Type="String" />
                <asp:Parameter Name="original_EMAIL" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MATK" Type="Int32" />
                <asp:Parameter Name="TENTK" Type="String" />
                <asp:Parameter Name="MAT_KHAU" Type="String" />
                <asp:Parameter Name="HO_TEN" Type="String" />
                <asp:Parameter Name="NGAY_SINH" Type="String" />
                <asp:Parameter Name="GIOI_TINH" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="DIA_CHI" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENTK" Type="String" />
                <asp:Parameter Name="MAT_KHAU" Type="String" />
                <asp:Parameter Name="HO_TEN" Type="String" />
                <asp:Parameter Name="NGAY_SINH" Type="String" />
                <asp:Parameter Name="GIOI_TINH" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="DIA_CHI" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="original_MATK" Type="Int32" />
                <asp:Parameter Name="original_TENTK" Type="String" />
                <asp:Parameter Name="original_MAT_KHAU" Type="String" />
                <asp:Parameter Name="original_HO_TEN" Type="String" />
                <asp:Parameter Name="original_NGAY_SINH" Type="String" />
                <asp:Parameter Name="original_GIOI_TINH" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_DIA_CHI" Type="String" />
                <asp:Parameter Name="original_EMAIL" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MATK" DataSourceID="SqlDataKH" DefaultMode="Insert">
            <InsertItemTemplate>
                Mã tài khoản:
                <asp:TextBox ID="MATKTextBox" runat="server" Text='<%# Bind("MATK") %>' />
                <br />
                Tên tài khoản:
                <asp:TextBox ID="TENTKTextBox" runat="server" Text='<%# Bind("TENTK") %>' />
                <br />
                Mật khẩu:
                <asp:TextBox ID="MAT_KHAUTextBox" runat="server" Text='<%# Bind("MAT_KHAU") %>' />
                <br />
                Họ và tên:
                <asp:TextBox ID="HO_TENTextBox" runat="server" Text='<%# Bind("HO_TEN") %>' />
                <br />
                Ngày sinh:
                <asp:TextBox ID="NGAY_SINHTextBox" runat="server" Text='<%# Bind("NGAY_SINH") %>' />
                <br />
                Giới tính:
                <asp:TextBox ID="GIOI_TINHTextBox" runat="server" Text='<%# Bind("GIOI_TINH") %>' />
                <br />
                Số điện thoại:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                Địa chỉ:
                <asp:TextBox ID="DIA_CHITextBox" runat="server" Text='<%# Bind("DIA_CHI") %>' />
                <br />
                Email:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm dữ liệu" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
            </InsertItemTemplate>
        </asp:FormView>
        <br />

    </div>
    </form>
</body>
</html>
