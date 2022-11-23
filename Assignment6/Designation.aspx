<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Designation.aspx.cs" Inherits="Assignment6.Designation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Insert,Edit,Delete and Update Designation</h1>
            <table align="center" style="border:dashed">
                
                <tr>
                    <td>
                        Department
                    </td>
                    <td>
                         <asp:DropDownList ID="ddldpt" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                         Enter the designation
                    </td>
                    <td>
                        <asp:TextBox ID="txtdesig" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                                <asp:Button ID="btnsub" runat="server" Text="Register" OnClick="btnsub_Click" />
                    </td>
            
                </tr>
            </table>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DesignationId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="depname" HeaderText="Department" />
                    <asp:BoundField DataField="DesignationName" HeaderText="Designation" />
                    <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    <asp:HyperLinkField DataNavigateUrlFields="DesignationId" DataNavigateUrlFormatString="Redirectpage.aspx?did={0}" HeaderText="Go to next page" Text="Go" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
