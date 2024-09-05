<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



</main>
<footer style="bottom: 0px">
	<div class="container container-fluid">
		<div class="row" style="padding: 20px">
			<div class="col-sm-8"
				style="text-align: lef; border-right: 1px solid #eee">
				<div class="col-sm-12">
					<ul id="footer-category">
						<li><a href="<%=request.getContextPath()%>/partnership/list.do">제휴문의</a></li>
						<li><a href="<%=request.getContextPath()%>/notice/list.do">공지사항</a></li>
						<li><a href="<%=request.getContextPath()%>/faq/list.do">FAQ</a></li>
						<li><a href="<%=request.getContextPath()%>/useInquiry/mainlist.do">문의게시판</a></li>
						 <li><a href="<%=request.getContextPath()%>/admin/login.do">관리자</a></li>
					</ul>
				</div>
				<div class="col-sm-12" style="padding-left: 3 0px; font-size: 13px">
					<ul id="footer-info">
						<li>소재지주소 : 대전광역시 중구 계룡로 846 3층</li>
						<li>전산센터 주소 : 대전광역시 중구 계룡로 846 306호</li>
						<li>E-MAIL : ddit306@gmail.com</li>
						<li>대표 : 김민강 통신판매신고번호 : 2020-대전오류-1186</li>
						<li>사업자등록번호 : 145-71-00360</li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3" style="margin-left: 30px">
				<h2>대덕렌탈</h2>
				<br />
				<h4 style="margin-bottom: 5px">
					고객센터 : <span style="font-size: 15px">042-222-8201</span>
				</h4>
			</div>
		</div>
	</div>
</footer>
</div>
<script>
    $(document).ready(function () {
        var contextPath = "<%=request.getContextPath()%>";
        var mainPageUrl = contextPath + '/views/indexMain.jsp';
        var header = $(".navbar");
        var headerHeight = header.outerHeight();
        var headerTop = header.offset().top;

        window.addEventListener('scroll', () => {
            const header = document.getElementById('header');
            if (window.scrollY > 100) { // Adjust this value as needed
              header.style.top = '0';
            } else {
              header.style.top = '-50px';
            }
          });

        $(document).on('click', '.sort-btn', function() {
            var sortType = $(this).data('sort');
            
            $.ajax({
                url: "<%=request.getContextPath()%>/sortItems", // 서버의 URL
                type: 'GET',
                data: { sortType: sortType },
                success: function(response) {
                    $('#product-list-box').empty(); // 기존 제품 목록을 비웁니다.
                    var productItem = '<div id="product-item-list" style="width:84%;display:flex;flex-wrap:wrap;">';
                    // 새로운 제품 목록을 동적으로 추가합니다.
                    response.forEach(function(item) {
                        productItem += '<div class="product-item">' +
                            '<div>' +
                            '<img src="' + contextPath + '/views/images/product/' + item.streFileNm + '" class="img-responsive" alt="Image" />' +
                            '</div>' +
                            '<p class="modelName">' + item.itemModel + '</p>' +
                            '<p class="productName">' + item.itemName + '</p>' +
                            '<div class="rental">' +
                            '<p class="rental-fee">월렌탈료</p>' +
                            '<p class="rental-amount">' + item.itemM60 + '<span class="rental-amount-won">원</span></p>' +
                            '</div>' +
                            '</div>';
                        
                    });
                    productItem += '</div>';
                        $('#product-list-box').append(productItem);
                },
                error: function(xhr, status, error) {
                    console.error('정렬 요청 중 오류 발생:', error);
                }
            });

        });

        $(document).on('click', '.detail-selectable-button', function() {
            var value = $(this).data('value');
            var newValue = value + "<span>원</span>";
            
            $('#sit_it_price').html(newValue);
            $('#selectedValue').val(value);
        });
        
        $(document).ready(function () {
            $('.detail-selectable-button').click(function () {
                var value = $(this).data('value');

                $('.detail-selectable-button').removeClass('selected');
                $(this).addClass('selected');

                $('#selectedValue').val(value);

                $('#sit_it_price').html(value + '<span>원</span>');
            });
        });

        $(document).on('click', '#click-top', function(event) {
            event.preventDefault(); // 기본 앵커 동작 방지
            window.scrollTo({ top: 0, behavior: "smooth" }); // 부드러운 스크롤로 페이지 상단으로 이동
        });
        
 
        
        $('#loginForm').on('submit', function(event) {
            event.preventDefault(); 
            var queryString = $(this).serialize();
            $.ajax({
                url: contextPath + '/checkLogin.do',
                type: 'POST',
                data: queryString,
                dataType: 'json',
                success: function(data) {
                    if (data.code == 'user' || data.code == 'com') {
                        window.location.href = mainPageUrl;
                    } else if (data.code == 'fail') {
                        alert(data.message);
                    }
                },
                error: function() {
                    alert('서버 통신 오류가 발생했습니다.');
                }
            });
        });

        $('#login-submit-button').click(function() {
            $('#loginForm').submit();
        });

        $(document).keydown(function(event) {
            if (event.key === 'Enter') {
                $('#loginForm').submit();
            }
        });
        
        document.addEventListener('DOMContentLoaded', function() {
            const menuItems = document.querySelectorAll('.menu-item');

            menuItems.forEach(function(item) {
                item.addEventListener('click', function(e) {
                    e.preventDefault();

                    // 모든 서브메뉴 숨기기
                    const submenus = document.querySelectorAll('.submenu');
                    submenus.forEach(function(submenu) {
                        submenu.style.display = 'none';
                    });

                    // 클릭한 메뉴의 서브메뉴 보이기
                    const submenuId = 'submenu-' + item.getAttribute('data-submenu');
                    const submenu = document.getElementById(submenuId);
                    if (submenu) {
                        submenu.style.display = 'block';
                    }
                });
            });
        });
        
        document.querySelectorAll('.filter-checkbox').forEach(checkbox => {
            checkbox.addEventListener('click', function(event) {
                document.getElementById("filterForm").dispatchEvent(new Event('submit'));
            });
        });
        
        document.getElementById("filterForm").addEventListener("submit", function(event) {
            event.preventDefault(); // 기본 폼 제출 방지

            const brands = [];
            document.querySelectorAll("input[name='brand']:checked").forEach(el => brands.push(el.value));

            const companies = [];
            document.querySelectorAll("input[name='company']:checked").forEach(el => companies.push(el.value));

            const options = [];
            document.querySelectorAll("input[name='option']:checked").forEach(el => options.push(el.value));

            const filterData = {
                brands: brands,
                companies: companies,
                options: options
            };

            fetch('<%=request.getContextPath()%>/filterItems', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8'
                },
                body: JSON.stringify(filterData)
            })
            .then(response => response.json())
            .then(data => {
                const productListBox = document.getElementById("product-list-box");
                if (productListBox) {
                    productListBox.innerHTML = data.html;
                } else {
                    console.error('Product list box element not found!');
                }

                const productCount = document.querySelector('.product-count span');
                if (productCount) {
                    productCount.innerHTML = data.count;
                } else {
                    console.error('Product count element not found!');
                }
            })
            .catch(error => console.error('Error:', error));
        });
        
        
        
    });
	
	
      
      
   	 	</script>
	</body>
</html>


