<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationUsingjQuery.aspx.cs"
    Inherits="CheckboxlistValidationClientSide.ValidationUsingjQuery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AspnetO.com | CheckBoxList Validation using jQuery</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("[id$=btnSave]").click(function () {
                if ($("[id$=cblImageFormat]").find("input:checked").length > 0) {
                    return true;
                } else {
                    alert('Please select image format from the list.');
                    return false;
                }
            });
        });
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
                        <asp:Button ID="btnSave" runat="server" Text="Save" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
