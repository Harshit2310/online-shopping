$(function() {
	// Solving the Active Menu Problem
	switch (menu) {

	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	default:
		'Home'
		$('#home').addClass('active');
		break;
	}
});