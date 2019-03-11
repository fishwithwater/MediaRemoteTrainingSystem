<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 全局js -->
<script
	src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>




<!-- Flot -->
<script
	src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.js"></script>
<script
	src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.resize.js"></script>

<!-- ChartJS-->
<script
	src="${pageContext.request.contextPath}/js/plugins/chartJs/Chart.min.js"></script>

<!-- Peity -->
<script
	src="${pageContext.request.contextPath}/js/plugins/peity/jquery.peity.min.js"></script>

<!-- Peity demo -->
<script src="${pageContext.request.contextPath}/js/demo/peity-demo.js"></script>
<!-- Toastr script -->
<script
	src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>

<script type="text/javascript">
	BASE_URL = '${pageContext.request.contextPath}/'
	function formData(form) {
		var data = {};
		var t = $(form).serializeArray();
		$.each(t, function() {
			data[this.name] = this.value;
		});
		return data;
	}
	function request(obj) {
		if (!obj.url) {
			console.error("request params error - url required!")
		}
		$.ajax({
			type : obj.method ? obj.method : "GET",
			url : BASE_URL + obj.url,
			data : obj.data,
			dataType : "json",
			success : function(data) {
				if (data.desc == 'success') {
					obj.success(data.data)
				} else {
					obj.error(data.desc)
				}
			},
			error : function(err) {
				obj.exception(err)
			}
		});
	}

	toastr.options = {
		closeButton : true,
		debug : false,
		progressBar : true,
		positionClass : 'toast-top-center'
	};
</script>
