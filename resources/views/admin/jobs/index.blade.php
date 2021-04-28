@extends('layouts.app')

@section('head')

@livewireStyles

@endsection

@section('content')

<div class="container">
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

@if (session()->has('message'))
    <x-toast :message="session()->get('message')" />
@endif

@endsection

@section('script')

@livewireScripts

@endsection