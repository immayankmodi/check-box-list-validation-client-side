<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationUsingJavaScript.aspx.cs"
    Inherits="CheckboxlistValidationClientSide.ValidationUsingJavaScript" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AspnetO.com | CheckBoxList Validation using JavaScript</title>
    <script type="text/javascript">
        function ValidateCheckBoxList() {
            var isChecked = false;
            var cblImageFormat = document.getElementById("<%=cblImageFormat.ClientID%>");
            var chkButtons = cblImageFormat.getElementsByTagName("input");

            for (var i = 0; i < chkButtons.length; i++) {
                if (chkButtons[i].checked) {
                    isChecked = true;
                    break;
                }
            }

            if (!isChecked) {
                alert("Please select image format from the list.");
            }

            return isChecked;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Select Image Format
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:CheckBoxList ID="cblImageFormat" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text=".jpg" />
                            <asp:ListItem Value="2" Text=".png" />
                            <asp:ListItem Value="3" Text=".gif" />
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return ValidateCheckBoxList();" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
