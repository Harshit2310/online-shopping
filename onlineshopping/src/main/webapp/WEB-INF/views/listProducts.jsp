<div class="container">

	<div class="row">
		<!-- Would be display the sidebar -->
		
			<%@include file="/WEB-INF/shared/sidebar.jsp"%>
		<!-- To be Display the actual products -->
		<div class="col-md-9">

			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
						<ol class="breadcrumb">

							<li><a href="${ContextRoot}/home">Home</a></li>
							<li class="active">/All Products</li>
						</ol>
					</c:if>


					<c:if test="${userClickCategoryProducts == true}">
						<ol class="breadcrumb">

							<li><a href="${ContextRoot}/home">Home</a></li>
							<li class="active">/Category</li>
							<li class="active">/${category.name}</li>
						</ol>
					</c:if>
				</div>

			</div>

		</div>
	</div>

</div>