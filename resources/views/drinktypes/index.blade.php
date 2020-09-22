<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Table</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="{{ asset('css/fontawesome-free-5.14.0-web/css/all.css') }}" rel="stylesheet">
    <script type="text/javascript" src="{{ asset('js/scripts.js') }}"></script>
    <style>
        .fa-edit {
            margin-right: 20px;
        }

        img {
            vertical-align: middle;
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }

        .admin__button{
            text-align: center;
        }

        .admin__button a{
            display: inline-block;
            margin-left: 10%;
            margin-right: 10%;
        }

    </style>
</head>

<body>
    <div style="margin : 50px">
        <table class="table">
            <thead>
                @if (session('message'))
                    <p class="text-success">{{ session('message') }}</p>
                @endif
                @if (session('success'))
                    <p class="text-success">{{ session('success') }}</p>
                @endif
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên loại thức uống</th>
                    <th scope="col">Hành động</th>
                </tr>

                <tr>
                    <th scope="col">#</th>
                    <th scope="col">飲み物タイプ</th>
                    <th scope="col">アクション</th>
                </tr>

            </thead>
            <tbody>
                <h2>Danh sách các loại thức uống</h2>
                <h2>飲み物の各種</h2>
                <div class="admin__button">
                    <a class="btn btn-outline-secondary" style="margin-bottom: 15px"
                        href="{{ route('admin.drinktypes.create') }}">Thêm loại thức uống mới｜新品</a>
                    <a class="btn btn-outline-secondary" style="margin-bottom: 15px" href="{{ route('index') }}">Xem
                        trang
                        chủ｜ホーム</a>
                        @forelse ($drinktypes as $drinktype)
                        <tr>
                            <th scope="row">{{ $loop->index }}</th>
                            <td>{{ $drinktype->name }}</td>
                            <td>
                                <div class="row">
                                    <div class="col-sm">
                                        <form method="POST" action="{{ route('admin.drinktypes.destroy', ['drinktype' => $drinktype]) }}">
                                            @csrf
                                            @method('delete')
                                            <button type="submit">
                                                <i class="fas fa-user-times"></i>
                                            </button>
                                        </form>
                                    </div>
                                    <div class="col-sm">
                                        <a href="{{ route('admin.drinktypes.edit', ['id' => $drinktype->id]) }}">
                                            <i class="far fa-edit"></i>
                                        </a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    @empty
                        <p>Không có tài khoản nào</p>
                    @endforelse
                </div>
            </tbody>
        </table>
    </div>
</body>

</html>
