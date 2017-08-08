Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.Data.Sql


Partial Class UserControl_DangKyThanhVien
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblkq.Visible = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            'Khai báo đối tượng sd thưu viện hàm
            Dim Doituong As New FunctionLibary


            'Khai báo biến xử lý chuỗi mã hóa
            'Dim Chuoimahoa As String

            'khai báo biến kiếm tả dữ liệu
            Dim Kiemtradulieu As Boolean

            'Gọi hàm xem có trùng tên hay không
            Kiemtradulieu = Doituong.TrungTenThanhVien(Me.txtten.Text)

            If Kiemtradulieu = False Then


                'khai báo chuỗi kêt nối đên SQL
                Dim strConnect As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectShoe").ConnectionString

                'Khai báo đối tượng OleDB
                Dim MyConnect As New SqlConnection(strConnect)

                'Mở kêt nối đên SQL
                MyConnect.Open()

                'khai báo câu lệnh Insert SQL
                Dim strSQL As String
                strSQL = "Insert into Thanhvien(Hoten,SDT,Email,Diachi,ID,Password) "
                strSQL = strSQL + "values(@Hoten,@SDT,@Email,@Diachi,@ID,@Password)"

                'Khai báo đối tượng OleDBCommand để lưu trữu vào SQL
                Dim MyCommand As New SqlCommand(strSQL, MyConnect)

                'gán gia trị cho biến
                MyCommand.Parameters.AddWithValue("@Hoten", Me.txtten.Text)
                MyCommand.Parameters.AddWithValue("@SDT", Me.txtsdt.Text)
                MyCommand.Parameters.AddWithValue("@Email", Me.txtemail.Text)
                MyCommand.Parameters.AddWithValue("@Diachi", Me.txtdiachi.Text)
                MyCommand.Parameters.AddWithValue("@ID", Me.txtid.Text)
                MyCommand.Parameters.AddWithValue("@Password", Me.txtmk.Text)
                'sử dụng phương thức ExecuteNonQuery để lưu trữu vào table SQL
                MyCommand.ExecuteNonQuery()

                'Đóng kết nối
                MyConnect.Close()

                'xóa biến kết
                MyConnect.Dispose()

                'Xuất thông báo
                Me.lblkq.Text = "Đăng ký thành công"
                Me.lblkq.Visible = True
            Else
                With Me
                    'Bật Label hiển thị trung tên thành viên
                    .lblkq.Text = "Trùng tên với khách hàng cũ.Nhập lại tên khác"
                    .lblkq.Visible = True

                    'Xóa các textbox
                    .txtten.Text = Space(0)
                    .txtsdt.Text = Space(0)
                    .txtemail.Text = Space(0)
                    .txtdiachi.Text = Space(0)
                    .txtid.Text = Space(0)
                    .txtmk.Text = Space(0)
                    .txtmk1.Text = Space(0)

                    'Di chuyển Cursor vào textbox đầu tiên
                    .txtten.Focus()
                End With
            End If
            'With Me


            '    'Xóa các textbox
            '    .txtten.Text = Space(0)
            '    .txtsdt.Text = Space(0)
            '    .txtemail.Text = Space(0)
            '    .txtdiachi.Text = Space(0)
            '    .txtid.Text = Space(0)
            '    .txtmk.Text = Space(0)
            '    .txtmk1.Text = Space(0)


            '    'Di chuyển Cursor vào textbox đầu tiên
            '    .txtten.Focus()
            'End With
        Catch ex As Exception
            'Thông báo trên webpage nếu có lôi
            Response.Write(ex.Message)

        End Try
    End Sub

End Class
