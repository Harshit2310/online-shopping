
<div class="container">
	<!-- Breadcrumb -->
	<div class="row">

		<div class="col-xs-12">
			<ol class="breadcrumb">

				<li><a href="${ContextRoot}/home">/Home</a></li>
				<li><a href="${ContextRoot}/show/all/products">/Products</a></li>
				<li class="active">/${product.name}</li>
			</ol>
		</div>

	</div>

</div>
<div class="row">

	<!-- Display the Product image -->
	<div class="col-xs-12 col-sm-4">
	
		<div class="thumbnail" >
		
			<img src="${images}/${product.code}.jpg" class="img img-responsive"/>
		
		</div>
	
	</div>
	
	<!-- Display the Product image -->
	<div class="col-xs-12 col-sm-8">
	
		<h3>${product.name}</h3>
		<hr/>
 		<p>${product.description}</p> 
		<hr/>
		<h4>Price:<strong>&#8377;${product.unitPrice} /-</strong></h4>
		<hr/>
		<h6>Qty. Available: ${product.quantity}</h6>
		<a href="${ContextRoot}/cart/add/${product.id}/product" class="btn btn-success">
		<i class="fa fa-shopping-cart fa-lx" aria-hidden="true">Add To Cart</i></a>
		<a href="${ContextRoot}/show/all/products" class="btn btn-primary">Back</a>
	</div>



</div>