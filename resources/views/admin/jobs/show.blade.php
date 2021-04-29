@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="bg-white rounded p-5">
            <h3>{{$job->title}}</h3>
            <hr>
            <div class="px-3">
                {!!$job->description!!}
            </div>
        </div>
        <div class="form-group mt-3">
            <div class="row">
                <div class="col-md-2 offset-md-5">
                    <a href="/admin/jobs/{{$job->id}}/edit" class="btn btn-primary btn-block">Edit</a>
                </div>
            </div>
        </div>
    </div>
@endsection