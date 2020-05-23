<style>
    .image img{
        margin-top: 10px !important;
        border-radius: 5px !important;
    }
    .text-muted{
        margin-top: -20px !important;
        text-align: center !important;
    }
</style>
<div class="widget latest-posts card">
    <header>
        <h3 class="h6">Artikel Terbaru</h3>
    </header>
    <div class="blog-posts">
    @foreach(\App\Post::where('status', 1)->orderBy('published_at', 'DESC')->limit(3)->get() as $post)
            <a href="{{ url('/blog/' .$post->slug) }}">
                <div class="item d-flex align-items-center">
                    <div class="image">
                        <img src="{{ asset($post->featured) }}" alt="" class="img-fluid">
                    </div>
                    <div class="title">
                        <strong>{{ $post->title }}</strong>
                    </div>
                </div>
                <div class="f-flex align-items-center">
                    <p class="text-muted">
                        {{ $post->date }}
                    </p>
                </div>
            </a>
        @endforeach
    </div>
</div>    