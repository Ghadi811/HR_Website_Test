Public Class TB_stu

    Public Function SerchgetData(ByVal name As String) As List(Of Student)
        Using db = New HREntities
            Return (From s In db.Students
                    Where s.stu_name.Contains(name)
                    Select s).ToList()

        End Using
    End Function
    Public Function getData() As List(Of Student)
        Using db = New HREntities
            Return (From s In db.Students
                    Select s).ToList()

        End Using
    End Function
    Public Function Add_emp(ByVal P As Student) As Boolean
        Try
            Using db = New HREntities
                db.Entry(P).State = EntityState.Added
                db.SaveChanges()
                Return True
            End Using
        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function Delete_emp(ByVal P As Student) As Boolean

        Try
            Using db = New HREntities
                db.Entry(P).State = EntityState.Deleted
                db.SaveChanges()
                Return True
            End Using

        Catch ex As Exception
            Return False
        End Try

    End Function

End Class
