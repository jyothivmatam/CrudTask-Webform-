<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="CrudTask1.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="9">
                <asp:GridView ID="dgViewStudents" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="399px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 10px; margin-top: 47px" Width="498px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Student_record]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">
                <asp:Label ID="Name" runat="server" Text="Student Information"></asp:Label>
            </td>
            <td style="width: 234px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">
                <asp:Label runat="server" Text="Name" ForeColor="#FF0066"></asp:Label>
            </td>
            <td style="width: 234px">
                <asp:TextBox ID="txtName" runat="server" Width="378px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">
                <asp:Label runat="server" Text="Gender" ForeColor="#FF0066"></asp:Label>
            </td>
            <td style="width: 234px">
                <asp:DropDownList ID="ddlGender" runat="server" Width="286px">
                    <asp:ListItem>Choose Any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">
                <asp:Label ID="Label4" runat="server" Text="Email" ForeColor="#FF0066"></asp:Label>
            </td>
            <td style="width: 234px">
                <asp:TextBox ID="txtEmail" runat="server" Width="371px" CausesValidation="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">
                <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I Agree!" />
                <asp:Label ID="IbIMessage" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">
                <asp:Label ID="IbISID" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="width: 234px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel Operation" Width="376px" OnClick="btnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 360px">&nbsp;</td>
            <td style="width: 234px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
