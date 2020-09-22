
@extends('layouts.header')

@section('content')
<body>

    @foreach ($food_types as $food_type)
        <h2 style="">{{ $food_type->name }}</h2>
    <section class=" slider">
            <ul id="food-{{ $loop->index }}" class="cs-hidden">
                @forelse ($food_type->foods as $food)
                @if ($food->status)

                    <li class="item-a">
                        <!--box-slider--------------->
                        <div class="box">
                            <!--img-box---------->
                            <div class="slide-img">
                                <img alt="1" src="{{ Storage::url($food->image) }}">
                                <!--overlayer---------->
                                {{-- <div class="overlay">
                                    <!--buy-btn------>
                                    <a href="#" class="buy-btn">Buy Now</a>
                                </div> --}}
                            </div>
                            <!--detail-box--------->
                            <div class="detail-box">
                                <!--type-------->
                                <div class="type">
                                    <a href="#">{{ $food->foodnamevn }}</a>
                                    <span>{{ $food->foodnamejp }}</span>
                                </div>
                                <!--price-------->
                                <a href="#" class="price">{{ $food->price }}円</a>

                            </div>

                        </div>
                    </li>
                @endif
                @empty
                    <p>.</p>
    @endforelse
    </ul>
    </section>
    @endforeach

    <script>
        let food_types_count = {{count($food_types)}};
    </script>
</body>
@endsection
