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

<!-- Sweet alert -->
<script src="${pageContext.request.contextPath}/js/plugins/sweetalert/sweetalert.min.js"></script>

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

	toastr.options = {
		closeButton : true,
		debug : false,
		progressBar : true,
		positionClass : 'toast-top-center'
	};

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

		if (!obj.error) {
			obj.error = function(msg) {
				toastr.error(msg)
			}
		}
		
		if (!obj.exception) {
			obj.exception = function(msg) {
				toastr.error(msg)
			}
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

	/**
	 * 初始化表格
	 * @param tableId 表格id
	 * @param dataUrl 表格数据获取地址
	 * @param columns 表格数据format
	 * @param responseHandler 返回处理函数
	 */
	function initTable(tableId, dataUrl, columns, responseHandler) {
		$("#" + tableId).bootstrapTable('destroy');
		$("#" + tableId).bootstrapTable({ // 对应table标签的id
			url : dataUrl, // 获取表格数据的url
			cache : false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
			striped : true, //表格显示条纹，默认为false
			height : 700,
			pagination : true, // 在表格底部显示分页组件，默认false
			pageList : [ 10, 15, 20 ], // 设置页面可以显示的数据条数
			pageSize : 15, // 页面数据条数
			pageNumber : 1, // 首页页码
			sidePagination : 'server',
			showRefresh : true,
			sortName : 'styleId', // 要排序的字段
			sortOrder : 'asc', // 排序规则
			columns : columns,
			onLoadSuccess : function() { //加载成功时执行
				console.info("加载成功");
			},
			onLoadError : function() { //加载失败时执行
				console.info("加载数据失败");
			},
			responseHandler : responseHandler
		})
	}

	/**
	 * 初始化表格
	 * @param tableId 表格id
	 * @param dataUrl 表格数据获取地址
	 * @param columns 表格数据format
	 * @param sortOrder 排序规则
	 * @param responseHandler 返回处理函数
	 */
	function initTableWithSort(tableId, dataUrl, columns, sortOrder,
			responseHandler) {
		$("#" + tableId).bootstrapTable({ // 对应table标签的id
			url : dataUrl, // 获取表格数据的url
			cache : false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
			striped : true, //表格显示条纹，默认为false
			height : 700,
			pagination : true, // 在表格底部显示分页组件，默认false
			pageList : [ 10, 15, 20 ], // 设置页面可以显示的数据条数
			pageSize : 15, // 页面数据条数
			pageNumber : 1, // 首页页码
			sidePagination : 'server',
			showRefresh : true,
			sortName : sortOrder.key, // 要排序的字段
			sortOrder : sortOrder.order, // 排序规则
			columns : columns,
			onLoadSuccess : function() { //加载成功时执行
				console.info("加载成功");
			},
			onLoadError : function() { //加载失败时执行
				console.info("加载数据失败");
			},
			responseHandler : responseHandler

		})
	}
	/**
	 * 关闭指定Id模态框
	 * @param modalId
	 */
	function closeModal(modalId) {
		$("#" + modalId).modal('hide')
	}

	/**
	 * 打开指定Id模态框
	 * @param modalId
	 */
	function showModal(modalId) {
		$("#" + modalId).modal('show')
	}

	/**
	 * 刷新指定ID表格数据
	 * @param tableId
	 */
	function refreshTable(tableId) {
		$('#' + tableId).bootstrapTable('refresh', {
			silent : true
		});
	}
	/**
	 * 获取页面url中参数
	 * @param name
	 * @returns {*}
	 */
	function getUrlParam(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		var r = window.location.search.substr(1).match(reg); //匹配目标参数
		if (r != null)
			return unescape(r[2]);
		return null; //返回参数值
	}

	function verifyParam(obj, cb) {
		var flag = true
		for ( var i in obj) {
			if (obj[i] && obj[i] != null && obj[i] != undefined
					&& obj[i] != 'null' && obj[i] != 'undefined'
					&& $.trim(obj[i]) != '') {

			} else {
				flag = false;
				break
			}
		}
		if (flag) {
			cb()
		} else {
			toastr.error("请填写完整表单")
		}
	}
</script>
