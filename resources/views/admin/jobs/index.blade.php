@extends('layouts.admin')

@section('content')

<div class="container px-0">
    <div class="card border-0" style="min-height: 75vh">

        <div class="card-body">
            <div class="d-flex justify-content-end align-items-center mb-3">
                <p class="m-0">Create New Job</p>
                <x-add-button url='/admin/jobs/create' /> 
            </div>
            @livewire('show-jobs')
        </div>
    </div>
</div>

@endsection