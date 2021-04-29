@extends('layouts.app')

@section('content')
<div class="container">
    <div class="bg-white rounded p-5">
        <p>Your are Applying for:</p>
        <h3>{{$job->title}}</h3>
        <hr>
        <form action="{{url('/applicants')}}" method="post" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="job_id" value="{{$job->id}}">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input class="form-control" type="text" name="name" id="name" value="{{old('name')}}">
            </div>
            <div class="form-group">
                <label for="resume">Resume</label>
                <input class="btn btn-light d-block" type="file" name="resume" id="resume">
            </div>
            <hr>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2 offset-md-5">
                        <button class="btn btn-primary btn-block" type="submit">Submit</button>                        
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection