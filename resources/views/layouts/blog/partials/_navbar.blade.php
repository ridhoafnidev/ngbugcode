<style>
  div ul li a{
    text-transform: capitalize!important;
  }
  .nav-link{
    text-transform: capitalize !important; 
  }
</style>

<nav class="navbar navbar-expand-lg">
    <div class="search-area">
      <div class="search-area-inner d-flex align-items-center justify-content-center">
        <div class="close-btn"><i class="icon-close"></i></div>
        <div class="row d-flex justify-content-center">
          <div class="col-md-8">
            <form action="{{ url('/search') }}" method="GET">
              <div class="form-group">
                <input type="search" name="q" id="search" placeholder="Apa yang kamu cari?">
                <button type="submit" class="submit"><i class="icon-search-1"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="container">

      <!-- Navbar Brand -->
      <div class="navbar-header d-flex align-items-center justify-content-between">
        <!-- Navbar Brand --><a href="{{ url('/') }}" class="navbar-brand">NgebugCode</a>
        <!-- Toggle Button-->
        <button type="button" data-toggle="collapse" data-target="#navbarcollapse" aria-controls="navbarcollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span></span><span></span><span></span></button>
      </div>
      <!-- Navbar Menu --> 
      <div id="navbarcollapse" class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
          @foreach (\App\Category::all() as $category)
          <li class="nav-item"><a href="{{ url('/blog/category/' . $category->slug) }}" class="nav-link {{ Request::path() === 'blog/category/'.$category->slug ? 'active' : '' }}">{{ $category->slug }}</a></li>
          @endforeach
          <li class="nav-item"><a href="{{ url('/blog') }}" class="nav-link {{ Request::path() === 'blog' ? 'active' : '' }}">Blog</a></li>
        </ul>
        <div class="navbar-text"><a href="#" class="search-btn"><i class="icon-search-1"></i></a></div>
      </div>
    </div>
</nav>
<script>
    // when any a link click
  $('a').click(function(){
      // if already any element in active status remove it
      $('a').removeClass('active');
      // add active status to this one only
      $(this).addClass('active');
      
  });
</script>