<div class="container">

	<div class="row">
		<!-- Would be display the sidebar -->

		<%@include file="/WEB-INF/shared/sidebar.jsp"%>
		<!-- To be Display the actual products -->
		<div class="col-md-9">

			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">

						<script>
							window.categoryId = '';
						</script>
						<ol class="breadcrumb">

							<li><a href="${ContextRoot}/home">Home</a></li>
							<li class="active">/All Products</li>
						</ol>
					</c:if>


					<c:if test="${userClickCategoryProducts == true}">

						<script>
							window.categoryId = '${category.id}';
						</script>
						<ol class="breadcrumb">

							<li><a href="${ContextRoot}/home">Home</a></li>
							<li class="active">/Category</li>
							<li class="active">/${category.name}</li>
						</ol>
					</c:if>
				</div>

				<div class=" col-lg-12">

					<table id="productListTable"
						class="table table-striped "
						style=" font-color: white; background-color: white; color: black">
						 <!--width: 835px; -->
						<thead>
							<tr>
							
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>
							</tr>
						</tfoot>
					</table>

				</div>
			</div>

		</div>
	</div>

</div>