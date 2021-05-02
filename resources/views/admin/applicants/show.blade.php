@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="bg-white rounded p-5">
            <div class="row">
                <div class="col-md-6">
                    <label for="name">Name</label>
                    <h3>{{$applicant->name}}</h3>
                </div>
            </div>

            <hr>

            <div class="row">
                <div class="col-md-6">
                    <label for="email">Email</label>
                    <h3>{{App\Models\User::find($applicant->user_id)->email}}</h3>
                </div>
            </div>

            <hr>

            <p>Resume</p>

            <div style="height: 400px; overflow: auto" class="my-3">
                <div class="px-3 h-100">
                    <pre>
                        {!!$applicant->resume_text!!}
                    </pre>
                </div>
            </div>

            <hr>
            <p>Keywords Score</p>
            
            @foreach (json_decode($applicant->keywords_score) as $key => $value)
                <p class="d-inline-block btn btn-light">{{$key}} <span class="badge badge-primary">{{$value}}</span></p>
            @endforeach
            
            <hr>

            <p>Attachment</p>
            <a href="">{{$applicant->resume}}</a>
        </div>
        <div class="form-group mt-3">
            <div class="row">
                <div class="col-md-2 offset-md-5">
                    <a href="/admin/applicants/{{$applicant->id}}/edit" class="btn btn-primary btn-block">Edit</a>
                </div>
            </div>
        </div>
    </div>
@endsection