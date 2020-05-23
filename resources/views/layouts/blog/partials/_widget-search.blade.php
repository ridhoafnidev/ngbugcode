<div class="widget search card">
    <header>
        <h3 class="h6">Cari Disini</h3>
    </header>
    <form action="{{ url('/search' ) }}" method="GET" class="search-form">
        <div class="form-group">
            <input type="search" name="q" placeholder="Apa yang ingin kamu cari?">
            <button type="submit" class="submit"><i class="icon-search"></i></button>
        </div>
    </form>
</div>
    