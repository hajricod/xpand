@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="bg-white rounded p-5">
            <h3>{{$job->title}}</h3>
            <hr>
            <div class="px-3">
                {!!$job->description!!}
                <hr>
                <p>
                    <b>From:</b> {{$job->from->format('Y-m-d')}} / <b>To:</b> {{$job->to->format('Y-m-d')}}
                </p>
            </div>
            
        </div>
        <div class="form-group mt-3">
            <div class="row">
                <div class="col-md-2 offset-md-5">
                    <a href="/applicants/create?id={{$job->id}}" class="btn btn-primary btn-block">Apply</a>
                </div>
            </div>
        </div>
    </div>
@endsection