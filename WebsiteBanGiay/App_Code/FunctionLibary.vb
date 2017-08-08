Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql



Public Class FunctionLibary
#Region "Hàm tìm kiểm tra tên thành viên"
    'Hàm kiểm tra tên thành viên'
    Public Function TrungTenThanhVien(ByVal TenTV As String) As Boolean
        'khai báo sử dụng chuỗi kết nối đến CSDL Access
        Dim Ketnoi As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectShoe").ConnectionString
        'Khai báo và khởi tạo đối tượng OleDbConnection
        Dim MyConnect As New SqlConnection(Ketnoi)
        'Mở kết nối đến CSDL Access
        MyConnect.Open()
        'Khai báo và mô tả câu lệnh SQL
        Dim strSQL As String = "SELECT Hoten FROM Thanhvien"
        'Khai báo và tạo đối tượng oleDbCommand
        Dim MyCommand As New SqlCommand(strSQL, MyConnect)
        'Khai báo và khởi tạo đối tượng DataReader
        Dim MyReader As SqlDataReader = MyCommand.ExecuteReader()
        'Khai báo biến lưu trữu kết quả tìm kiếm 
        Dim Ketqua As Boolean = False
        'Duyệt qua từng record trong Table
        While MyReader.Read()
            'Nếu tìm thấy tên thành viên
            If TenTV = MyReader("Hoten") Then
                Ketqua = True
                Exit While
            End If
        End While
        'Đóng kết nối
        MyConnect.Close()
        'Xóa biến kết nối khỏi bộ nhơ
        MyConnect.Dispose()
        'Giá trị trả về của hàm
        Return Ketqua
    End Function
#End Region

#Region "Tìm thành viên"
    'Hàm tìm tên thành viên trong CSDL 
    Public Function Timthanhvien(ByVal BienTenTV As String) As Boolean
        'Khai báo biến lưu trữ kết quả trả về
        Dim Ketqua As Boolean = False

        'khai báo sử dụng chuỗi kết nối đến CSDL Access
        Dim Ketnoi As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectShoe").ConnectionString

        'Khai báo và khởi tạo đối tượng OleDbConnection
        Dim MyConnect As New SqlConnection(Ketnoi)

        'Mở kết nối đến CSDL SQL
        MyConnect.Open()

        'Khai báo và mô tả câu lệnh SQL
        Dim strSQL As String = "SELECT Hoten FROM Thanhvien"

        'Khai báo và tạo đối tượng oleDbCommand
        Dim MyCommand As New SqlCommand(strSQL, MyConnect)

        'Khai báo và khởi tạo đối tượng DataReader
        Dim MyReader As SqlDataReader = MyCommand.ExecuteReader()

        'Duyệt qua từng record trong Table
        While MyReader.Read()
            'Nếu tìm thấy tên thành viên
            If BienTenTV = MyReader("Hoten") Then
                Ketqua = True

                Exit While
            End If
        End While

        'Đóng kết nối
        MyConnect.Close()

        'Xóa biến kết nối khỏi bộ nhơ
        MyConnect.Dispose()

        'Giá trị trả về của hàm
        Return Ketqua
    End Function

#End Region
End Class
