
Partial Class UserControl_DatHang
    Inherits System.Web.UI.UserControl

    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            Dim strConnect As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectShoe").ConnectionString

            'Khai báo đối tượng OleDB
            Dim MyConnect As New SqlConnection(strConnect)

            'Mở kêt nối đên SQL
            MyConnect.Open()

            'khai báo câu lệnh Insert SQL
            Dim strSQL As String
            strSQL = "Insert into DONHANG(TENKH,DIACHIGIAO,SDT,NGAYGIAO,THANHTOAN,SOTHE) "
            strSQL = strSQL + "values(@TENKH,@DIACHIGIAO,@SDT,@NGAYGIAO,@THANHTOAN,@SOTHE)"

            'Khai báo đối tượng OleDBCommand để lưu trữu vào SQL
            Dim MyCommand As New SqlCommand(strSQL, MyConnect)

            'gán gia trị cho biến
            MyCommand.Parameters.AddWithValue("@TENKH", Me.txtTen.Text)
            MyCommand.Parameters.AddWithValue("@DIACHIGIAO", Me.txtdiachi.Text)
            MyCommand.Parameters.AddWithValue("@SDT", Me.txtsdt.Text)
            MyCommand.Parameters.AddWithValue("@NGAYGIAO", Me.txtngaygiao.Text)
            MyCommand.Parameters.AddWithValue("@THANHTOAN", Me.cbothanhtoan.Text)
            MyCommand.Parameters.AddWithValue("@SOTHE", Me.txtsothe.Text)
            'sử dụng phương thức ExecuteNonQuery để lưu trữu vào table SQL
            MyCommand.ExecuteNonQuery()
            'Đóng kết nối
            MyConnect.Close()

            'xóa biến kết
            MyConnect.Dispose()

            'Xuất thông báo
            Me.lblkq.Text = "Đã đặt hàng thành công. Công ty sẽ liên hệ với bạn"
            Me.lblkq.Visible = True
        Catch ex As Exception
            Me.lblkq.Text = " Đặt hàng không thành công. Mời bạn kiểm tra lại thông tin"
            Me.lblkq.Visible = True



        End Try



    End Sub

    Protected Sub cbothanhtoan_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles cbothanhtoan.SelectedIndexChanged, cbothanhtoan.Load
       
        

    End Sub
End Class
