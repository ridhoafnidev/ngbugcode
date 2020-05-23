<style>
    img {
        border-radius: 10px;
    }
    .img-blur:hover{
        opacity:0.8;
    }
    .box-top{
        display : block;
        position: absolute;
        transition:0.5s;
    }
    .box-top:hover{
        margin-top: -5px;
    }
    #box-style{
        border-radius:13px!important;
        /* overflow:hidden; */
        background: #fff;
        box-shadow: 0 0 15px rgba(33,33,33,.2);
    }
    #box-style:hover{
        box-shadow: 0 0 10px rgba(33,33,33,.2); 
    }
    /* .h4:hover{
        color: grey !important;
    } */
</style>
@extends('layouts.blog.app')

@section('content')
<!-- Hero Section-->
<!-- <section
    style="background: url({{ asset('assets/blog/img/hero.jpg') }}); background-size: cover; background-position: center center"
    class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <h1>IDBlog - A simple blog by laravel framework</h1><a href="#" class="hero-link">Discover More</a>
            </div>
        </div><a href=".intro" class="continue link-scroll"><i class="fa fa-long-arrow-down"></i> Scroll Down</a>
    </div>
</section> -->
<!-- Intro Section-->
<!-- <section class="intro"> -->
    <!-- <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <h2 class="h3">Some great intro here</h2>
                <p class="text-big">Place a nice <strong>introduction</strong> here <strong>to catch reader's
                        attention</strong>. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud nisi ut
                    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderi.</p>
            </div>
        </div>
    </div> -->
<!-- </section> -->
<div class="container">
<br>
<div>
  <img id="img" />
</div>
    <div class="row">
        <!-- Latest Posts -->
        <main class="posts-listing col-lg-12"> 
            <div class="container">
                <div class="row">
                    @foreach ($posts as $post)
                        <!-- post -->
                        <div class="post col-xl-4 box-top">
                            <div class="post-thumbnail" >
                                <a href="{{ url('/blog/' . $post->slug) }}">
                                    <img src="{{ asset($post->featured) }}" alt="..." class="img-fluid img-blur">
                                </a>
                            </div>
                            <div class="post-details">
                                <div class="post-meta d-flex justify-content-between">
                                    <div class="date meta-last">{{ $post->published_at->format('d/m/Y') }}</div>
                                    <div class="category"><a href="{{ url('/blog/category/' . $post->category->slug) }}">{{ $post->category->title }}</a></div>
                                </div><a href="{{ url('/blog/' . $post->slug) }}">
                                    <h3 class="h4">{{ $post->title }}</h3></a>
                                {!! substr($post->body, 0, 150) !!}
                                <footer class="post-footer d-flex align-items-center"><a href="#" class="author d-flex align-items-center flex-wrap">
                                   
                                </footer>
                            </div>
                        </div>
                    @endforeach
                </div>
                <!-- Pagination -->
                <nav aria-label="Page navigation example">
                    {!! $posts->appends(request()->query())->links('layouts.blog.partials._pagination') !!}
                </nav>
            </div>
        </main>
    </div>
</div>
@endsection 

<script>

window.onload = function () {
  
    var images = ['http://placehold.it/300x150?text=Image1', 'http://placehold.it/300x150?text=Image2', 'http://placehold.it/300x150?text=Image3'];

  
  images.current = 0;
  
  var img = document.getElementById( 'img' );
  
  setInterval(function () {
      img.src = images[ images.current++ ];
      if ( images.current === images.length ) images.current = 0;        
  }, 1000 );
  
};


</script>