@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            @foreach ($sections as $section)
                <div class="col-md-4 my-3">
                    <a href="{{$section['url']}}" class="list-group-item-action">
                        
                        <div class="card rounded-3 border-0 shadow">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h5 class="card-title">{{$section['title']}}</h5> 
                                    <button type="button" class="btn btn-info text-light rounded-circle">
                                        <span class="">{{$section["count"]}}</span>
                                    </button>
                                </div>
                                
                                <p class="card-text">{{$section['description']}}</p>
                                <p class="card-text"><small class="text-muted">Latest record on: {{$section['latest']->created_at->format('Y M, d h:m:s')}}</small></p>
                            </div>                    
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@endsection