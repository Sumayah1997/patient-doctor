<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="doctor_id" DataSourceID="SqlDataSource1" AllowSorting="True" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="266px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" ReadOnly="True" 
                    SortExpression="doctor_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Con %>" 
            DeleteCommand="DELETE FROM [doctor] WHERE [doctor_id] = @doctor_id" 
            InsertCommand="INSERT INTO [doctor] ([doctor_id], [name]) VALUES (@doctor_id, @name)" 
            SelectCommand="SELECT * FROM [doctor]" 
            UpdateCommand="UPDATE [doctor] SET [name] = @name WHERE [doctor_id] = @doctor_id">
            <DeleteParameters>
                <asp:Parameter Name="doctor_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="doctor_id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="doctor_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="patient_id" DataSourceID="SqlDataSource2" Width="384px">
            <Columns>
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" ReadOnly="True" 
                    SortExpression="patient_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="bloodtype" HeaderText="bloodtype" 
                    SortExpression="bloodtype" />
                <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" 
                    SortExpression="doctor_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Con %>" 
            SelectCommand="SELECT * FROM [patient] WHERE ([doctor_id] = @doctor_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="doctor_id" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
</asp:Content>