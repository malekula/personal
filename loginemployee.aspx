<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginemployee.aspx.cs" Inherits="loginemployee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>���� � ������ �������</title>
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="jquery.keyboardLayout.js"></script>
    <link rel="stylesheet" type="text/css" href="jquery.keyboardLayout.css" />
</head>
<body>

    <form id="form1" runat="server">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl ="~/help.aspx" >������</asp:LinkButton>

        <center>
            <br />
            <table>
            <tr>
            <td>
            <asp:Login ID="Login1" runat="server" ForeColor="Black" LoginButtonText="�����" 
                PasswordLabelText="������:" TitleText="�����������" UserNameLabelText="����� ������������� ������, email ��� ����� ���������� �����*:" 
                DestinationPageUrl="~/Default.aspx" DisplayRememberMe="False" 
                OnAuthenticate="Login1_Authenticate" RememberMeText="" Height="110px" 
                PasswordRecoveryText="������ ������?" PasswordRecoveryUrl="~/PassRec.aspx" >
            </asp:Login>     
            </td>
            <td> &nbsp

            </td>
            </tr>
        </table>
            <br  />
            <br  />
            <asp:RadioButton ID="RadioButton1" runat="server"  AutoPostBack ="true"
                Text="�������� ��� ���������-�������� *"  
                Checked ="true" GroupName = "112" 
                oncheckedchanged="RadioButton1_CheckedChanged" /> <br />
            <!--<asp:RadioButton ID="RadioButton3" runat="server" text="�������� �������� **"  AutoPostBack ="true"
                GroupName = "112" oncheckedchanged="RadioButton3_CheckedChanged"/>    <br />-->

            <asp:RadioButton ID="RadioButton2" runat="server" text="��������� **"  AutoPostBack ="true"
                GroupName = "112" oncheckedchanged="RadioButton2_CheckedChanged"/>
        </center>
          
    <!--<div style="vertical-align:middle; margin-top:15%">-->
    <p>
        * - ���������� ������� ���� ����� ������������� ������, 
        ���� ����� ��������� ����� (������ 19 ����), ���� email.</p>
    <asp:Panel ID="Panel1" runat="server" Visible ="false" >
    ���� �� �� ���������������� � ����������, �� ��� ����������:
    <br />
    1. <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="http://80.250.173.145/WebReaderT/Default.aspx" >��������� ��������������� �������� ��������</asp:HyperLink>
    <br />
    2. �������� � ���������� ���� ��� ���� ������� � ���� ���������� ���� ���������� �����
    <br />
    3. ��������� ������ ����������� �������������� ���.
    </asp:Panel>
    <br />
    <br />
    <p >
        
        ���� �� ������ ����� �������� ���������, �� ��� ���������� ������ ���������
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl ="http://80.250.173.145/WebRemoteReg/Default.aspx">�����������</asp:HyperLink>.<br />
        �������� �������� - ��� ��������, ������� ����� ����� ������������ ������ ������������ ������� ���������� � �������� �� ��������� ���������� ����������� ��� �����������.
    </p>
    <p >
        ** - ������ ���������� �� ���������� ����������� � ������
    </p>
    <br />
    <br />
    <br />
    </form>
        <script type="text/javascript">
            $(function() {
                $(':password').keyboardLayout();
            });
    </script>
</body>
</html>
