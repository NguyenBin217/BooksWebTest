<%@page import="BEAN.ChitiethoadonBean"%>
<%@page import="BEAN.HoadonBean"%>
<%@page import="BEAN.GiohangBean"%>
<%@page import="BEAN.SachBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Nhà sách Tri thức</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	
    <!-- Bootstrap Core CSS -->
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Content/shop-homepage.css" rel="stylesheet" />
</head>
<body>
	<%@include file="head.jsp" %>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <%@include file="bentrai.jsp" %>
            <div class="col-md-9">
                <%@include file="slide.jsp" %>
                <div>
                    <h2 style="text-align:center">LỊCH SỬ MUA HÀNG</h2>
                    
                <table class="table table-striped">
                	<tr>
                		<th>Mã HĐ</th>
                		<th>Ngày mua</th>
                		<th>Mã CTHĐ</th>
                		<th>Mã sách</th>
                		<th>Số lượng</th>
                		<th>Ảnh</th>
                		<th>Đã duyệt</th>
                	</tr>
                	<%
	                ArrayList <HoadonBean> dsHD = (ArrayList <HoadonBean>)request.getAttribute("dsHD") ;
	                if (dsHD!=null)
	                for (HoadonBean hd :dsHD)
	                {
	                %>
						<%for (ChitiethoadonBean ct :hd.getDanhsachCT()) { %>
						
						<tr>
	                		<td>
	                			<%=hd.getMahoadon() %>
	                		</td>
	                		<td>
	                			<%=hd.getNgaymua() %>
	                		</td>
	                		<td>
	                			<%=ct.getMaChiTietHD() %>
	                		</td>
	                		<td>
	                			<%=ct.getMaSach() %>
	                		</td>
	                		<td>
	                			<%=ct.getSoluong() %>
	                		</td>
	                		<td>
	                			<img alt="<%=ct.getMaSach() %>" src="<%=ct.getAnh()%>">
	                		</td>
	                		<td>
	                			<%=hd.isDamua() ? "Đã duyệt": "Chưa duyệt" %>
	                		</td>
	                	</tr>
						<%} %>
						</div>
						
					<%} %>
                	
                </table>
                
            	</div>
            	
        	</div>
    	</div>
    </div>
    <!-- /.container -->
    <%@include file ="foot.jsp" %>
    
	
</body>
</html>