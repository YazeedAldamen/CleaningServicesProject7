<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CompletedTasks.ascx.cs" Inherits="CleaningServices1.WebUserControl2" %>


<style type="text/css">
    .auto-style1 {
        margin-right: 0px;
    }

    .gridTable{
        width:80%;
        margin-left:10%;
    }
</style>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridTable .table-striped table table-hover" EmptyDataText="No Data Found">
    <Columns>
        <asp:BoundField DataField="BookingID" HeaderText="Booking ID" />
        <asp:TemplateField HeaderText="Client Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ClientName") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ClientName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ClientPhone" HeaderText="Client Phone" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="Status" HeaderText="Booking Status" />
        <asp:BoundField DataField="ClientEmail" HeaderText="Client Email" />
        <asp:BoundField DataField="CityName" HeaderText="City" /> 
       
          
       
    </Columns>
    
<EmptyDataRowStyle HorizontalAlign="Center" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="#2B98F0" />
                    <RowStyle HorizontalAlign="Center" />
    <EmptyDataRowStyle HorizontalAlign="Center"/>
</asp:GridView>