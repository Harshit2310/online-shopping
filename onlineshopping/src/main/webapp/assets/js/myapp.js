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
	default:
		'listProducts'
		$('#listProducts').addClass('active');
		$('#a_'+menu).addClass('active');
		break;
	}
});