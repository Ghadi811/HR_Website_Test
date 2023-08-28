Imports System.Reflection.Emit

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView2.DataSource = New TB_EMP().getData()
        GridView2.DataBind()
    End Sub

    Public Sub AddToGridView2() ' اختصار للسب بروسيجر الفنكشن لازم ترجع قيمة
        Dim _emp As New employee
        Dim _empList As New List(Of employee)
        For i = 0 To GridView2.Rows.Count - 1
            ' عدد الروز يبدأ من واحد لكن الاندكس حيكون من زيرو
            _emp = New employee
            _emp.Emp_name = GridView2.Rows(i).Cells(1).Text
            _emp.Emp_Nat = GridView2.Rows(i).Cells(2).Text
            _emp.Emp_Gender = GridView2.Rows(i).Cells(3).Text
            _emp.Data_Of_Birth = GridView2.Rows(i).Cells(4).Text
            _emp.Email = GridView2.Rows(i).Cells(5).Text
            _emp.Mobile = GridView2.Rows(i).Cells(6).Text
            _emp.Branch = GridView2.Rows(i).Cells(7).Text
            _empList.Add(_emp)

        Next
        _emp = New employee
        ' نعلمه بلست لان القرد فيو ماتاخذ سنقل اوبجكت لازم تاخذ ملتي اوبجكت 
        _emp.Emp_name = stu_name.Text
        _emp.Emp_Nat = stu_nat.SelectedValue
        _emp.Emp_Gender = typeList.SelectedValue
        _emp.Data_Of_Birth = stu_birth.Text
        _emp.Email = stu_em.Text
        _emp.Mobile = stu_ph.Text
        _emp.Branch = uni_bra.SelectedValue

        _empList.Add(_emp)

        GridView2.DataSource = _empList
        GridView2.DataBind()



    End Sub







    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        GridView2.DataSource = New TB_EMP().SerchgetData(TextBox1.Text)
        GridView2.DataBind()
    End Sub

    Protected Sub AddButton_Click(sender As Object, e As EventArgs) Handles AddButton.Click
        Dim c As New EMP
        c.nat_id = Idst.Text
        c.Emp_name = stu_name.Text
        c.Emp_Nat = stu_nat.SelectedValue
        c.Emp_Gender = typeList.SelectedValue
        c.Data_Of_Birth = stu_birth.Text
        c.Email = stu_em.Text
        c.Mobile = stu_ph.Text
        If New TB_EMP().Add_emp(c) Then
            Label20.Text = "تمت عملية الاضافة"
        Else
            Label20.Text = "حدث خطأ"

        End If
    End Sub

    Protected Sub DeleteButton_Click(sender As Object, e As EventArgs) Handles DeleteButton.Click
        Dim c As New EMP
        c.ID = TextBox3.Text
        If New TB_EMP().Delete_emp(c) Then
            Label20.Text = " تمت عملية الحذف "
        Else
            Label20.Text = "حدث خطأ"

        End If
    End Sub
End Class