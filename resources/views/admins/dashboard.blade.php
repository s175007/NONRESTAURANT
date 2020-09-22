@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <br>
                        <a class="btn mt-1" style="background-color:rgba(101, 67, 3, 0.95); color:white"
                            href="{{ route('admin.foodtypes.index') }}" role="button">Danh sách các loại thức ăn</a>
                        <br>
                        <a class="btn mt-1" style="background-color:rgba(101, 67, 3, 0.95); color:white"
                            href="{{ route('admin.foods.index') }}" role="button">Danh sách món</a>
                        <br>
                        <a class="btn mt-1" style="background-color:rgba(0, 96, 255, 0.85); color:white"
                            href="{{ route('admin.drinktypes.index') }}" role="button">Danh sách các loại thức uống</a>
                        <br>
                        <a class="btn mt-1" style="background-color:rgba(0, 96, 255, 0.85); color:white"
                        href="{{ route('admin.drinks.index') }}" role="button">Danh sách thức uống</a>
                    <br>
                        <a class="btn mt-1" style="background-color:rgba(255, 38, 0, 0.74); color:white" href="{{ route('admins.logout') }}"
                            role="button">Đăng xuất</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
