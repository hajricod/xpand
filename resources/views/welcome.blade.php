@extends('layouts.app')

@section('content')
    <div class="container px-0">
        <div class="bg-white rounded p-2">
            @livewire('jobs-list')
        </div>
    </div>
@endsection