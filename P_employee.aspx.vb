Public Class P_employee
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        MultiView1.SetActiveView(View1)
    End Sub



    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gender.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        AddToGridView1()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        AddToGridView2()
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Nat.SelectedIndexChanged

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub


    Protected Sub idem_TextChanged(sender As Object, e As EventArgs) Handles idem.TextChanged
        If isaudi(idem.Text) Then
            Nat.SelectedValue = "سعودي"
            Nat.Enabled = False
        Else
            Nat.Enabled = True
        End If
    End Sub
    Public Sub AddToGridView1() ' اختصار للسب بروسيجر الفنكشن لازم ترجع قيمة
        Dim _emp As New employee
        Dim _empList As New List(Of employee)
        For i = 0 To GridView1.Rows.Count - 1
            ' عدد الروز يبدأ من واحد لكن الاندكس حيكون من زيرو
            _emp = New employee
            _emp.ID = GridView1.Rows(i).Cells(0).Text
            _emp.Emp_name = GridView1.Rows(i).Cells(1).Text
            _emp.Emp_Nat = GridView1.Rows(i).Cells(2).Text
            _emp.Emp_Gender = GridView1.Rows(i).Cells(3).Text
            _emp.Data_Of_Birth = GridView1.Rows(i).Cells(4).Text
            _emp.Email = GridView1.Rows(i).Cells(5).Text
            _emp.Mobile = GridView1.Rows(i).Cells(6).Text
            _emp.Branch = GridView1.Rows(i).Cells(7).Text
            _empList.Add(_emp)

        Next
        _emp = New employee
        ' نعلمه بلست لان القرد فيو ماتاخذ سنقل اوبجكت لازم تاخذ ملتي اوبجكت 
        _emp.ID = idem.Text
        _emp.Emp_name = name.Text
        _emp.Emp_Nat = Nat.SelectedValue
        _emp.Emp_Gender = gender.SelectedValue
        _emp.Data_Of_Birth = dateOf.Text
        _emp.Email = email.Text
        _emp.Mobile = phone.Text
        _emp.Branch = BranchList.SelectedValue

        _empList.Add(_emp)

        GridView1.DataSource = _empList
        GridView1.DataBind()

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

    Protected Sub RadioButtonList1_SelectedIndexChanged1(sender As Object, e As EventArgs) Handles ch.SelectedIndexChanged
        Dim selctedValue As String = ch.SelectedValue
        If selctedValue = "طالب" Then
            MultiView1.SetActiveView(View1)
        Else
            MultiView1.SetActiveView(View2)
        End If

    End Sub
    ' باي فاليو يرجع بس ترو وفولس  
    ' x= "sudi" هذا يرجع باي رفرتس يرجع سترنق او اي شي 
    Public Function isaudi(ByVal ID As Integer) As Boolean

        If ID.ToString.Substring(0, 1) = 1 Then
            Return True
        Else
            Return False
        End If
    End Function
End Class