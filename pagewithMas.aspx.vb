Public Class page
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub





    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView2.DataSource = New TB_stu().getData()
        GridView2.DataBind()
    End Sub





    Public Sub AddToGridView2() ' اختصار للسب بروسيجر الفنكشن لازم ترجع قيمة
        Dim _stu As New studentop
        Dim _studentList As New List(Of studentop)
        For i = 0 To GridView2.Rows.Count - 1
            ' عدد الروز يبدأ من واحد لكن الاندكس حيكون من زيرو
            _stu = New studentop
            _stu.ID_stu1 = GridView2.Rows(i).Cells(0).Text
            _stu.stu_name1 = GridView2.Rows(i).Cells(1).Text
            _stu.stu_Nat1 = GridView2.Rows(i).Cells(2).Text
            _stu.stu_Gender1 = GridView2.Rows(i).Cells(3).Text
            _stu.stu_Birth1 = GridView2.Rows(i).Cells(4).Text
            _stu.stu_Email1 = GridView2.Rows(i).Cells(5).Text
            _stu.stu_Mobile1 = GridView2.Rows(i).Cells(6).Text
            _stu.uni_Branch1 = GridView2.Rows(i).Cells(7).Text
            _studentList.Add(_stu)

        Next
        _stu = New studentop
        ' نعلمه بلست لان القرد فيو ماتاخذ سنقل اوبجكت لازم تاخذ ملتي اوبجكت 
        _stu.ID_stu1 = Idst.Text
        _stu.stu_name1 = stu_name.Text
        _stu.stu_Nat1 = stu_nat.SelectedValue
        _stu.stu_Gender1 = typeList.SelectedValue
        'التاريخ عربي مارح تشتغل
        ' _stu.stu_Birth = CDate(stu_birth.Text)
        _stu.stu_Birth1 = stu_birth.Text
        _stu.stu_Email1 = stu_em.Text
        _stu.stu_Mobile1 = stu_ph.Text
        _stu.uni_Branch1 = uni_bra.SelectedValue

        _studentList.Add(_stu)

        GridView2.DataSource = _studentList
        GridView2.DataBind()

    End Sub

    Protected Sub Idst_TextChanged(sender As Object, e As EventArgs) Handles Idst.TextChanged

    End Sub

    Protected Sub stu_name_TextChanged(sender As Object, e As EventArgs) Handles stu_name.TextChanged

    End Sub

    Protected Sub stu_nat_SelectedIndexChanged(sender As Object, e As EventArgs) Handles stu_nat.SelectedIndexChanged

    End Sub

    Protected Sub typeList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles typeList.SelectedIndexChanged

    End Sub

    Protected Sub stu_birth_TextChanged(sender As Object, e As EventArgs) Handles stu_birth.TextChanged

    End Sub

    Protected Sub stu_em_TextChanged(sender As Object, e As EventArgs) Handles stu_em.TextChanged

    End Sub

    Protected Sub stu_ph_TextChanged(sender As Object, e As EventArgs) Handles stu_ph.TextChanged

    End Sub

    Protected Sub uni_bra_SelectedIndexChanged(sender As Object, e As EventArgs) Handles uni_bra.SelectedIndexChanged

    End Sub




    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        GridView2.DataSource = New TB_EMP().SerchgetData(TextBox1.Text)
        GridView2.DataBind()
    End Sub

    Protected Sub AddButton_Click(sender As Object, e As EventArgs) Handles AddButton.Click
        Dim c As New Student
        c.ID_stu = Idst.Text
        c.stu_name = stu_name.Text
        c.stu_Nat = stu_nat.SelectedValue
        c.stu_Gender = typeList.SelectedValue
        c.stu_Birth = stu_birth.Text
        c.stu_Email = stu_em.Text
        c.stu_Mobile = stu_ph.Text
        If New TB_stu().Add_emp(c) Then
            Label20.Text = "تمت عملية الاضافة "
        Else
            Label20.Text = "حدث خطأ"

        End If
    End Sub

    Protected Sub DeleteButton_Click(sender As Object, e As EventArgs) Handles DeleteButton.Click
        Dim c As New Student
        c.ID_stu = TextBox3.Text
        If New TB_stu().Delete_emp(c) Then
            Label20.Text = "تمت عملية الحذف "
        Else
            Label20.Text = "حدث خطأ"

        End If
    End Sub


End Class

