@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="bg-white rounded p-5">
            @livewire('jobs-list')
        </div>
    </div>
@endsection