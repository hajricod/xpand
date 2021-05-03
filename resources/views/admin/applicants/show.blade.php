@extends('layouts.admin')

@section('content')
    <div class="container px-0">
        <div class="bg-white rounded p-2">
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

            @if ($applicant->resume_text)
                <div style="height: 400px; overflow: auto" class="my-3">
                    <div class="px-3 h-100">
                        <pre>
                            {!!$applicant->resume_text!!}
                        </pre>
                    </div>
                </div>
            @else
                <div style="height: 100px;" class="my-3">
                    <div class="px-3 h-100">
                        <p>Resume was not printed due to insufficient keywords score!</p>
                    </div>
                </div>
            @endif
            

            <hr>
            <p>Keywords Score</p>
            
            @foreach (json_decode($applicant->keywords_score) as $key => $value)
                <p class="d-inline-block btn btn-light">{{$key}} <span class="badge badge-primary">{{$value}}</span></p>
            @endforeach
            
            <hr>

            <p>Attachment</p>
            <a href="{{route('download', ['resumes', $applicant->resume])}}" class="text-lowercase text-decoration-none">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-download" viewBox="0 0 16 16">
                    <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z"/>
                    <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z"/>
                </svg>
                <span class="p-1">{{ str_replace(" ", "_", $applicant->name)}}_resume.pdf</span>
            </a>
        </div>
        {{-- <div class="form-group mt-3">
            <div class="row">
                <div class="col-md-2 offset-md-5">
                    <a href="/admin/applicants/{{$applicant->id}}/edit" class="btn btn-primary btn-block">Edit</a>
                </div>
            </div>
        </div> --}}
    </div>
@endsection