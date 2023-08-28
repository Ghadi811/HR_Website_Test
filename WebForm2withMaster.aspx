    <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm2withMaster.aspx.vb" Inherits="WebApplication3.WebForm2" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <style>
            body {
                background-image:url(back2.jpg);
       background-attachment: fixed;
            }
            .center-content {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .form-container {
                  background: rgba(199,207,207, 0.5);
 
            padding: 20px;
            border-radius: 10px;
            max-width: 800px;
            width: 100%;
            }

            .form-label {
                font-weight: bold;
            }
        
            .gridview-container {
                margin-top: 20px;
                border: 1px solid #ccc;
                padding: 10px;
                border-radius: 10px;
            }
        </style>
        <div class="center-content">
            <div class="form-container">
                
                <table id="stu" runat="server" align="center" dir="rtl" class="table">
                     <tr>
        <td colspan="2" class="text-center">
            <h3>بيانات الموظفين</h3>
        </td>
    </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="رقم الهوية" CssClass="form-label"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Idst" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>

                <tr>
                    <td >

                        <asp:Label ID="Label9" runat="server" Text="اسم الموظف" CssClass="form-label"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="stu_name" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label10" runat="server" Text="الجنسية" CssClass="form-label"></asp:Label>

                    </td>
                    <td class="text-center" CssClass="form-control">
                        <asp:DropDownList ID="stu_nat" runat="server">
                            <asp:ListItem>سعودي</asp:ListItem>
                            <asp:ListItem>اماراتي</asp:ListItem>
                            <asp:ListItem>كويتي</asp:ListItem>

                        </asp:DropDownList>


                    </td>

                </tr>
                <tr>

                    <td >
                        <asp:Label ID="Label11" runat="server" Text="نوع الجنس:" CssClass="form-label"></asp:Label>
                    </td>
                    <td class="text-center" CssClass="form-control">
                        <asp:RadioButtonList ID="typeList" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>ذكر</asp:ListItem>
                            <asp:ListItem>أنثى</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="تاريخ الميلاد"  CssClass="form-label"></asp:Label>

                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="stu_birth" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>
                <tr>

                    <td >
                        <asp:Label ID="Label13" runat="server" Text="البريد الالكتروني" CssClass="form-label"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="stu_em" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>
                <tr>

                    <td >
                        <asp:Label ID="Label14" runat="server" Text="رقم الهاتف" CssClass="form-label"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="stu_ph" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="الفرع " CssClass="form-label"></asp:Label>

                    </td>

                    <td class="text-center" CssClass="form-control">
                        <asp:DropDownList ID="uni_bra" runat="server">
                            <asp:ListItem>مكة</asp:ListItem>
                            <asp:ListItem>الجموم</asp:ListItem>
                            <asp:ListItem>الليث</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                    <tr>

                    <td colspan="2" class="text-center">
                        <asp:Button ID="AddButton" runat="server" Text="اضافة" CssClass="btn btn-primary rounded-pill" Height="52px" Width="102px" style="background-color: #513D39;" />

                    </td>
                    
                </tr>
                       <tr>

                    <td >
                        <asp:Button ID="Button3" runat="server" Text="بحث عن موظف" CssClass="btn btn-primary rounded-pill" Height="52px" Width="141px" style="background-color: #513D39;" />

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>

                    
                    <tr>

                    <td >
                        <asp:Button ID="DeleteButton" runat="server" Text="حذف موظف" CssClass="btn btn-primary rounded-pill" Height="52px" Width="138px" style="background-color: #513D39;" />

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>
                      <tr>
        <td colspan="2" class="text-center">
            <asp:Button ID="Button1" runat="server" Text="تحميل البيانات" CssClass="btn btn-primary rounded-pill" Height="52px" Width="102px" style="background-color: #513D39;" />
        </td>
    </tr>

                    <tr>

                    <td colspan="2" class="text-center">
                        <asp:Label ID="Label20" runat="server" Text=""></asp:Label>

                    </td>
                    
                </tr>

                    <tr><td colspan="2">
                         <div class="gridview-container">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                         <Columns>
                                <asp:BoundField DataField="ID" HeaderText="الرقم التسلسلي" />
                            </Columns>

                            <Columns>
                                <asp:BoundField DataField="nat_id" HeaderText="رقم الهوية" />
                            </Columns>

                            <Columns>

                                <asp:BoundField DataField="Emp_name" HeaderText=" اسم الموظف  " />
                            </Columns>
                            <Columns>
                                <asp:BoundField DataField="Emp_Nat" HeaderText="الجنسية" />
                            </Columns>
                            <Columns>
                                <asp:BoundField DataField="Emp_Gender" HeaderText="الجنس" />
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

                   </asp:GridView>
                </div>
             

                        </td></tr>


                  
                  </Table>
              
            </div>
        </div>
      
     
        <script src="Scripts/bootstrap.bundle.js"></script>
        


    </asp:Content>
