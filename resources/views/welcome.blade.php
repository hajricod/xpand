@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="bg-white rounded p-5">
            <input type="text" name="search_job" id="search_job" class="form-control col-md-6 offset-md-3" placeholder="Search a Job">
            <hr>
            <ul class="list-group px-0">
                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                    <div class="d-flex w-100 justify-content-between">
                      <h5 class="mb-1">List group item heading</h5>
                      <small>3 days ago</small>
                    </div>
                    <p class="mb-1">Some placeholder content in a paragraph.</p>
                    <small>And some small print.</small>
                </a>
            </ul>
        </div>
    </div>
@endsection