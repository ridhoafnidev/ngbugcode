<style>
    img {
        border-radius: 10px;
    }
    .box-top{
        display : block;
        position: absolute;
    }
    .text-color{
        background:royalblue;
        padding:2px;
        border-radius: 5px;
    }
    .text-color a{
        color: white!important;
        font-size: 10px!important;
        font-weight:100;
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
<div class="container">
    <div class="row">
        <!-- Latest Posts -->
        <main class="posts-listing col-lg-8"> 
            <div class="container">
                <div class="row">
                    @foreach ($posts as $post)
                        <!-- post -->
                        <div class="post col-xl-6">
                            <div class="post-thumbnail"><a href="{{ url('/blog/' . $post->slug) }}"><img src="{{ asset($post->featured) }}" alt="..." class="img-fluid"></a></div>
                            <div class="post-details">
                                <div class="post-meta d-flex justify-content-between">
                                    <div class="date meta-last">{{ $post->published_at->format('d/m/Y') }}</div>
                                    <div class="category text-color"><a href="{{ url('/blog/category/' . $post->category->slug) }}">#{{ $post->category->title }}</a></div>
                                </div><a href="{{ url('/blog/' . $post->slug) }}">
                                    <h3 class="h4">{{ $post->title }}</h3></a>
                                {!! substr($post->body, 0, 150) !!}
                                <footer class="post-footer d-flex align-items-center"><a href="#" class="author d-flex align-items-center flex-wrap">
                                    <div class="avatar"><img src="{{ asset($post->user->avatar) }}" alt="..." class="img-fluid"> </div>
                                    
                                    <div class="title" style="font-size:14px!important"><span>{{ $post->user->name }}</span> | <i class="icon-clock"></i> {{ $post->date }} | <i class="icon-comment"></i>{{ $post->comments()->count() }}</div></a>
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
        <aside class="col-lg-4">
            <!-- Widget [Search Bar Widget]-->
            @include('layouts.blog.partials._widget-search')
            <!-- Widget [Latest Comments Widget]        -->
            @include('layouts.blog.partials._widget-latest')
            <!-- Widget [Categories Widget]-->
            @include('layouts.blog.partials._widget-categories')
        </aside>
    </div>
</div>
@endsection