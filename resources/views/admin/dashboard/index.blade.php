@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            @foreach ($sections as $section)
                <div class="col-md-4 my-3">
                    <a href="#" class="list-group-item-action">
                        <div class="card rounded-3 border-0 shadow">
                            <div class="card-body">
                                <h5 class="card-title">{{$section['title']}}</h5>
                                <p class="card-text">Add, or modify {{$section['title']}} in this section </p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>                    
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@endsection