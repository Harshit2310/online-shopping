$(function() {
	// Solving the Active Menu Problem
	switch (menu) {

	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;

	case 'Home':
		$('#home').addClass('active');
		break;
	default:
	$('#listProducts').addClass('active');
			
			
		$('#a_' + menu).addClass('active');
		break;
	}

	// code for jquery dataTable

	var $table = $('#productListTable')
   
	if ($table.length) {
		// console.log("Inside The Table");

		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.ContextRoot + '/json/data/all/products';
		} 
		else {
			jsonUrl = window.ContextRoot + '/json/data/category/'
					+ window.categoryId + '/products';
		}


		$table.DataTable({
			lengthmenu : [ [ 3, 5, 10, -1 ],
					[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
			pageLength : 5,
			ajax : {
				url :jsonUrl,
				dataSrc:'',
			},
			columns:[
				{
					data:'code',
					mRender:function(data,type,row)
					{
						return '<img src="'+window.ContextRoot+'/resources/images/'+data+'.jpg" class = "dataTableImg"/>';
					}
				},
				{
					data:'name',
				},
				{
					data:'brand',
				},
				{
					data:'unitPrice',
					mRender: function(data,type,row){
						return '&#8377;'+data;
					}
				},
				{
					data:'quantity',
				},
				{
					data:'id',
					//alert(data);,
					bSortable:false,
					mRender: function(data,type,row){
						var strView = '';
						var strCart = '';
						
						strView = '<a href="'+window.ContextRoot+'/show/'+data+'/product" ><i class="fa fa-eye fa-2x" aria-hidden="true"></i></a>';
						strCart = '<a href="'+window.ContextRoot+'/cart/add/'+data+'/product" ><i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i></a>';
						var strPlus = strView +'&#160;&#160;&#160;&#160;'+strCart
						return strPlus;
					}
					
				}
			]

		});
	}

});