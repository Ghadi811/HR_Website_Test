<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="P_employee.aspx.vb" Inherits="WebApplication3.P_employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            height: 39px;
            width: 1204px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="auto-style7">
            <asp:RadioButtonList ID="ch" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="auto-style5" Width="343px" Style="margin-left: 555px">
                <asp:ListItem>موظف</asp:ListItem>
                <asp:ListItem>طالب</asp:ListItem>
            </asp:RadioButtonList>

        </div>
      
                <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server"><table id="stu" runat="server" align="right" dir="rtl" style="background-color: #800000">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="الرقم الجامعي"></asp:Label>
                </td>
                <td>

                    <asp:TextBox ID="Idst" runat="server" Style="height: 29px"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>

                    <asp:Label ID="Label9" runat="server" Text="اسم الطالب"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="stu_name" runat="server" MaxLength="10" Width="150px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label10" runat="server" Text="الجنسية"></asp:Label>

                </td>
                <td>
                    <asp:DropDownList ID="stu_nat" runat="server">
                        <asp:ListItem>سعودي</asp:ListItem>
                        <asp:ListItem>اماراتي</asp:ListItem>
                        <asp:ListItem>كويتي</asp:ListItem>

                    </asp:DropDownList>


                </td>

            </tr>
            <tr>

                <td>
                    <asp:Label ID="Label11" runat="server" Text="نوع الجنس:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="typeList" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>ذكر</asp:ListItem>
                        <asp:ListItem>أنثى</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="تاريخ الميلاد"></asp:Label>

                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="stu_birth" runat="server" TextMode="Date"></asp:TextBox>

                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="Label13" runat="server" Text="البريد الالكتروني"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="stu_em" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="Label14" runat="server" Text="رقم الهاتف"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="stu_ph" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="فرع الجامعة"></asp:Label>

                </td>

                <td>
                    <asp:DropDownList ID="uni_bra" runat="server">
                        <asp:ListItem>مكة</asp:ListItem>
                        <asp:ListItem>الجموم</asp:ListItem>
                        <asp:ListItem>الليث</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="أضافة" />
                </td>
            </tr>
            <tr>
                <td colspan="2">

                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">

                        <Columns>
                            <asp:BoundField DataField="ID_stu" HeaderText="رقم الهوية" />
                        </Columns>

                        <Columns>

                            <asp:BoundField DataField="stu_name" HeaderText="اسم الطالب" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="stu_Nat" HeaderText="الجنسية" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="stu_Gender" HeaderText="النوع" />
                        </Columns>

                        <Columns>
                            <asp:BoundField DataField="stu_Birth" HeaderText="تاريخ الميلاد" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="stu_Email" HeaderText="البريد الالكتروني" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="stu_Mobile" HeaderText="رقم الهاتف" />

                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="uni_Branch" HeaderText="الفرع" />
                        </Columns>
                    </asp:GridView>

                </td>
            </tr>
        </table></asp:View>

      
        <asp:View ID="View2" runat="server">
        <table id="emp1" runat="server" align="right" dir="rtl" style="background-color: #003300;">

            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server" Text="رقم الهوية"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="idem" runat="server" AutoPostBack="True"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>

                    <asp:Label ID="Label2" runat="server" Text="أسم الموظف"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="name" runat="server" MaxLength="10" Width="150px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label3" runat="server" Text="الجنسية"></asp:Label>

                </td>
                <td>
                    <asp:DropDownList ID="Nat" runat="server">
                        <asp:ListItem>سعودي</asp:ListItem>
                        <asp:ListItem>اماراتي</asp:ListItem>
                    </asp:DropDownList>


                </td>

            </tr>
            <tr>

                <td>
                    <asp:Label ID="Label4" runat="server" Text="نوع الجنس:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>ذكر</asp:ListItem>
                        <asp:ListItem>أنثى</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="تاريخ الميلاد"></asp:Label>

                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="dateOf" runat="server" TextMode="Date"></asp:TextBox>

                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="email1" runat="server" Text="البريد الالكتروني"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="Label7" runat="server" Text="رقم الهاتف"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="الفرع"></asp:Label>

                </td>

                <td>
                    <asp:DropDownList ID="BranchList" runat="server">
                        <asp:ListItem>مكة</asp:ListItem>
                        <asp:ListItem>جدة</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="أضافة" />
                </td>
            </tr>
            <tr>
                <td colspan="2">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="رقم الهوية" />
                        </Columns>

                        <Columns>

                            <asp:BoundField DataField="Emp_name" HeaderText="اسم الموظف" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="Emp_Nat" HeaderText="الجنسية" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="Emp_Gender" HeaderText="النوع" />
                        </Columns>

                        <Columns>
                            <asp:BoundField DataField="Data_Of_Birth" HeaderText="تاريخ الميلاد" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" />
                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="Mobile" HeaderText="رقم الهاتف" />

                        </Columns>
                        <Columns>
                            <asp:BoundField DataField="Branch" HeaderText="الفرع" />
                        </Columns>
                    </asp:GridView>

                </td>
            </tr>
        </table>  </asp:View>
                    </asp:MultiView>


    </form>




</body>
</html>
