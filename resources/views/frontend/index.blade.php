@extends('frontend.layouts.app')

@section('content')
    <section class="bottom_headr d-none d-lg-block">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="all-category " id="mainCategoryNav">
                    <i class="fa fa-list"></i>
                    <span class="cat_main" >{{__('Categories')}}</span>
                    <i class="fa fa-caret-down"></i>

                    <div class="category-sidebar" id="underMainCategory">

                        <ul class="categories no-scrollbar d-none d-lg-block">

                            @foreach (\App\Category::all()->take(11) as $key => $category)
                                @php
                                    $brands = array();
                                @endphp
                                <li class="category-nav-element" data-id="{{ $category->id }}">
                                    <a href="{{ route('products.category', $category->slug) }}">
                                        <img class="cat-image lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($category->icon) }}" width="30" alt="{{ __($category->name) }}">
                                        <span class="cat-name">{{ __($category->name) }}</span>
                                    </a>
                                    @if(count($category->subcategories)>0)
                                        <div class="sub-cat-menu c-scrollbar">
                                            <div class="c-preloader">
                                                <i class="fa fa-spin fa-spinner"></i>
                                            </div>
                                        </div>
                                    @endif
                                </li>
                            @endforeach
                        </ul>
                    </div>


                </div>
            </div>
            <div class="col-lg-3">
                <div class="all-category ">
                    <span class="cat_main" ><a href="{{route('sellers_show')}}" class="text-white">{{__('All Shop')}}</a></span>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="all-category ">
                    <span class="cat_main" ><a href="#" class="text-white" >{{__('Gift Card')}}</a></span>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="all-category">
                    <span class="cat_main" ><a href="" class="text-white">{{__('Campaigns')}}</a></span>
                </div>
            </div>
        </div>
    </div>

    </section>

    <section class="mb-4">
                <div class="home-slide">
                    <div class="home-slide">
                        <div class="slick-carousel" data-slick-arrows="true" data-slick-dots="true" data-slick-autoplay="true">
                            @foreach (\App\Slider::where('published', 1)->get() as $key => $slider)
                                <div class="" style="height:400px;">
                                    <a href="{{ $slider->link }}" target="_blank">
                                    <img class="d-block w-100 h-100 lazyload" src="{{ asset('frontend/images/placeholder-rect.jpg') }}" data-src="{{ asset($slider->photo) }}" alt="{{ env('APP_NAME')}} promo">
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
    </section>

    @php
        $flash_deal = \App\FlashDeal::where('status', 1)->where('featured', 1)->first();
    @endphp
    @if($flash_deal != null && strtotime(date('d-m-Y')) >= $flash_deal->start_date && strtotime(date('d-m-Y')) <= $flash_deal->end_date)
    <section class="mb-4 bg-white">
    <div class="section-title-3 clearfix">
    </div>
        <div class="container">
            <div class="px-2 py-4 bg-white ">
                <h3 class="heading-5 strong-700 mb-0 float-lg-left flash_title text-white">
                    {{__('Flash Sale')}}
                </h3>
                <div class="flash-deal-box float-left">
                        <div class="countdown countdown--style-1 countdown--style-1-v1 " data-countdown-date="{{ date('m/d/Y', $flash_deal->end_date) }}" data-countdown-label="show"></div>
                </div>
            </div>
            <div class="caorusel-box arrow-round gutters-5">
                <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="6" data-slick-lg-items="4"  data-slick-md-items="3" data-slick-sm-items="6" data-slick-xs-items="2">
                    @foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
                        @php
                            $product = \App\Product::find($flash_deal_product->product_id);
                        @endphp
                        @if ($product != null && $product->published != 0)
                        <div class="col-xl-2 col-lg-3 col-md-4 col-6">
                                <div class="product-card-2 card card-product shop-cards shop-tech mb-2">
                                    <div class="card-body p-0">

                                        <div class="card-image">
                                            <a href="{{ route('product', $product->slug) }}" class="d-block text-center" >
                                                <img class="img-fit lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->flash_deal_img) }}" alt="{{ __($product->name) }}">
                                            </a>
                                        </div>

                                        <div class="p-3">
                                            <div class="price-box">
                                                @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                    <del class="old-product-price strong-400">{{ home_base_price($product->id) }}</del>
                                                @endif
                                                <span class="product-price strong-600">{{ home_discounted_base_price($product->id) }}</span>
                                            </div>
                                            <h2 class="product-title p-0 mt-2">
                                                <a href="{{ route('product', $product->slug) }}" class="text-truncate">{{ __($product->name) }}</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
                    <div class="show-more text-center mt-5 pb-3">
                        <a href="{{ route('flash-deal-details', $flash_deal->slug) }}" class="bg-green pl-4 pr-4 pt-2 pb-2">Show More >></a>
                    </div>
                </div>
        </div>
    </section>
    @endif

<!---------
    <div class="mb-4">
        <div class="container">
            <div class="row gutters-10">
                @foreach (\App\Banner::where('position', 1)->where('published', 1)->get() as $key => $banner)
                    <div class="col-lg-{{ 12/count(\App\Banner::where('position', 1)->where('published', 1)->get()) }}">
                        <div class="media-banner mb-3 mb-lg-0">
                            <a href="{{ $banner->url }}" target="_blank" class="banner-container">
                                <img src="{{ asset('frontend/images/placeholder-rect.jpg') }}" data-src="{{ asset($banner->photo) }}" alt="{{ env('APP_NAME') }} promo" class="img-fluid lazyload">
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    ----->

    <section class="selling_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title-2 clearfix mt-8">
                        <h3 class="heading-5 strong-700 mb-0 float-lg-left">
                            <span class="mr-4">Top Brand Products</span>
                        </h3>

                    </div>
                    <div class="row arrow-round gutters-5">
                        @foreach (filter_products(\App\Product::where('published', 1)->where('topbrand', '1'))->limit(8)->get() as $key => $product)
                            <div class="col-xl-3 col-lg-3 col-md-4 col-4">
                                <div class="product-box-2 bg-white alt-box my-2">
                                    <div class="position-relative overflow-hidden">
                                        <a href="{{ route('product', $product->slug) }}" class="d-block product-image h-100 text-center">
                                            <img class="img-fit lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->thumbnail_img) }}" alt="{{ __($product->name) }}">
                                        </a>
                                    </div>
                                    <div class="p-md-3 p-2">
                                        <h2 class="product-title p-0">
                                            <a href="{{ route('product', $product->slug) }}" class=" text-center text-truncate">{{ __($product->name) }}</a>
                                        </h2>
                                        <div class="price-box d-flex justify-content-center">
                                            <span class="product-price strong-600">{{ home_discounted_base_price($product->id) }}</span>
                                        </div>
                                        <div class="pt-1 d-flex justify-content-center">
                                            <button class=" add-btn "  onclick="showAddToCartModal({{ $product->id }})">
                                                <span class="text-white "> Add To Cart</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </diV>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-title-2 clearfix mt-8">
                        <h3 class="heading-5 strong-700 mb-0 float-lg-left">
                            <span class="mr-4">Weekly Best Selling Products</span>
                        </h3>

                    </div>
                    <div class="row arrow-round gutters-5">
                        @foreach (filter_products(\App\Product::where('published', 1)->where('weeklysell', '1'))->limit(8)->get() as $key => $product)
                            <div class="col-xl-3 col-lg-3 col-md-4 col-4">
                                <div class="product-box-2 bg-white alt-box my-2">
                                    <div class="position-relative overflow-hidden">
                                        <a href="{{ route('product', $product->slug) }}" class="d-block product-image h-100 text-center">
                                            <img class="img-fit lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->thumbnail_img) }}" alt="{{ __($product->name) }}">
                                        </a>
                                    </div>
                                    <div class="p-md-3 p-2">
                                        <h2 class="product-title p-0">
                                            <a href="{{ route('product', $product->slug) }}" class=" text-center text-truncate">{{ __($product->name) }}</a>
                                        </h2>
                                        <div class="price-box d-flex justify-content-center">
                                            <span class="product-price strong-600">{{ home_discounted_base_price($product->id) }}</span>
                                        </div>
                                        <div class="pt-1 d-flex justify-content-center">
                                            <button class=" add-btn "  onclick="showAddToCartModal({{ $product->id }})">
                                                <span class="text-white "> Add To Cart</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </diV>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!---
    <div id="section_best_sellers">

    </div>
    ---->
    <div id="section_featured">

    </div>

    <div id="section_best_selling">

    </div>

    <div id="section_home_categories">

    </div>

    @if(\App\BusinessSetting::where('type', 'classified_product')->first()->value == 1)
        @php
            $customer_products = \App\CustomerProduct::where('status', '1')->where('published', '1')->take(10)->get();
        @endphp
       @if (count($customer_products) > 0)
           <section class="mb-4">
               <div class="container">
                   <div class="px-2 py-4 p-md-4 bg-white shadow-sm">
                       <div class="section-title-1 clearfix">
                           <h3 class="heading-5 strong-700 mb-0 float-left">
                               <span class="mr-4">{{__('Classified Ads')}}</span>
                           </h3>
                           <ul class="inline-links float-right">
                               <li><a href="{{ route('customer.products') }}" class="active">{{__('View More')}}</a></li>
                           </ul>
                       </div>
                       <div class="caorusel-box arrow-round">
                           <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="5" data-slick-lg-items="4"  data-slick-md-items="3" data-slick-sm-items="2" data-slick-xs-items="2">
                               @foreach ($customer_products as $key => $customer_product)
                                   <div class="product-card-2 card card-product my-2 mx-1 mx-sm-2 shop-cards shop-tech">
                                       <div class="card-body p-0">
                                           <div class="card-image">
                                               <a href="{{ route('customer.product', $customer_product->slug) }}" class="d-block">
                                                   <img class="img-fit lazyload mx-auto" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($customer_product->thumbnail_img) }}" alt="{{ __($customer_product->name) }}">
                                               </a>
                                           </div>

                                           <div class="p-sm-3 p-2">
                                               <div class="price-box">
                                                   <span class="product-price strong-600">{{ single_price($customer_product->unit_price) }}</span>
                                               </div>
                                               <h2 class="product-title p-0 text-truncate-1">
                                                   <a href="{{ route('customer.product', $customer_product->slug) }}">{{ __($customer_product->name) }}</a>
                                               </h2>
                                               <div>
                                                   @if($customer_product->conditon == 'new')
                                                       <span class="product-label label-hot">{{__('new')}}</span>
                                                   @elseif($customer_product->conditon == 'used')
                                                       <span class="product-label label-hot">{{__('Used')}}</span>
                                                   @endif
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               @endforeach
                           </div>
                       </div>
                   </div>
               </div>
           </section>
       @endif
   @endif

    <div class="mb-4">
        <div class="container-fluid">
            <div class="row gutters-10">
                @foreach (\App\Banner::where('position', 2)->where('published', 1)->get() as $key => $banner)
                    <div class="col-lg-12">
                        <div class="media-banner mb-3 mb-lg-0">
                            <a href="{{ $banner->url }}" target="_blank" class="banner-container">
                                <img src="{{ asset('frontend/images/placeholder-rect.jpg') }}" style="height:220px;width: 99%;" data-src="{{ asset($banner->photo) }}" alt="{{ env('APP_NAME') }} promo" class="img-fluid lazyload">
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

@endsection

@section('script')
    <script>
        $(document).ready(function(){
            $.post('{{ route('home.section.featured') }}', {_token:'{{ csrf_token() }}'}, function(data){
                $('#section_featured').html(data);
                slickInit();
            });

            $.post('{{ route('home.section.best_selling') }}', {_token:'{{ csrf_token() }}'}, function(data){
                $('#section_best_selling').html(data);
                slickInit();
            });

            $.post('{{ route('home.section.home_categories') }}', {_token:'{{ csrf_token() }}'}, function(data){
                $('#section_home_categories').html(data);
                slickInit();
            });

            $.post('{{ route('home.section.best_sellers') }}', {_token:'{{ csrf_token() }}'}, function(data){
                $('#section_best_sellers').html(data);
                slickInit();
            });
        });
    </script>
@endsection
