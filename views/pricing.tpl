<div class="container-fluid">

    <!--- Carousel --->
    <div class= "container pt-5 w-100">
        <div id="carouselHeader" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselHeader" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Farm Fresh Produce"></button>
                <button type="button" data-bs-target="#carouselHeader" data-bs-slide-to="1"
                    aria-label="Free Delivery"></button>
                <button type="button" data-bs-target="#carouselHeader" data-bs-slide-to="2"
                    aria-label="Shop With Our App"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="{{prices.first().carousel_img.getImage()}}" class="d-block w-100" alt="">
                </div>
                {{each prices as price where sort_order != 1 sort by sort_order ASC }}
                <div class="carousel-item">
                    <img src="{{price.carousel_img.getImage()}}" class="d-block w-100" alt="">
                </div>
                {{end-each}}
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselHeader" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselHeader" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <div class="text-center pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto">
      <h1 class="display-4">{{this.title}}</h1>
      <p class="lead" id="pricedesc">{{this.description}}</p>
    </div>

    <!--- Price cards --->
    <div class="container pt-5 pb-5">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            {{each prices as price sort by sort_order ASC}}
            <div class="col">
                <div class="card h-100 shadow">
                    <img src="{{price.price_image.getImage()}}" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h3 class="card-title">{{price.price_title}}</h3>
                        <hr class="border-b-2 mb-8 mx-4">
                        <p class="card-text">{{price.price_desc}}</p>
                    </div>
                    <div class="card-footer text-center">
                        <a href="#" class="btn btn-success">{{price.btn_name}}</a>
                    </div>
                </div>
            </div>
            {{end-each}}
        </div>
    </div>

</div>

