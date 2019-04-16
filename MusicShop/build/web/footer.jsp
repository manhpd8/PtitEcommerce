<%-- 
    Document   : footer
    Created on : 28-Feb-2017, 22:24:46
    Author     : NguyenDang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
    </head>
    <body>
        <div class="footer">
		<div class="container">
		<div class="footer-top">
		<div class="col-md-9 footer-top1">
		<h4>Hợp tác kinh doanh cùng PTIT ECOMMERCE SHOP </h4>
		<p>Nếu bạn muốn trở thành một trong chuỗi hệ thống PTIT ECOMMERCE SHOP trong việc kinh doanh các sản phẩm thì hãy liên hệ với chúng tôi ngay để được hỗ trợ.</p>
		</div>
		<div class="col-md-3 footer-top2">
		<a href="contact.jsp">Liên hệ chúng tôi</a>
		</div>
		<div class="clearfix"> </div>
		</div>
			<div class="footer-grids">
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".5s">
					<h3>Giới Thiệu</h3>
					<p>PTIT ECOMMERCE SHOP là một nhóm công ty hàng đầu tại Việt Nam </span></p>
				</div>
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".6s">
					<h3>Thông Tin Liên Hệ</h3>
					<ul>
						<li><i class="glyphicon glyphicon-map-marker" ></i>học viện công nghệ bưu chính viễn thông<span>Mỗ lao hà đông hà nội</span></li>
						<li class="foot-mid"><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:contact.ptitecommerce@gmail.com">contact.ptitecommerce@gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>090 000 0000 (Mr.A), 091 000 0000 (Mr.B)</li>
					</ul>
				</div>
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".7s">
				<h3>Đăng ký theo dõi qua Email </h3>
                                <form action="NewsletterServlet" method="post">
					<input type="text" placeholder="Hãy nhập Email của bạn" name="email" required="">
                                        <input type="hidden" name="command" value="insert">
					<input type="submit" value="Gửi">
				</form>
			
				</div>
			
				<div class="clearfix"> </div>
			</div>
			
			<div class="copy-right animated wow fadeInUp" data-wow-delay=".5s">
				<p>&copy 2019 PTIT ECOMMERCE SHOP.</p>
			</div>
		</div>
	</div>
    </body>
</html>
