@extends('layouts.app')

@section('content')

<div class="container">
    <div class="card border-0" style="min-height: 75vh">

        <div class="card-body">
            <h4 class="text-center">Edit Job</h4>
            <hr>
            <form action="/admin/jobs/{{$job->id}}" method="post">
                @csrf
                @method('put')
                <div class="form-group">
                    <label for="title">{{__('Title')}}</label>
                    <input type="text" name="title" id="title" class="form-control" value="{{old('title') ? old('title') : $job->title}}">
                    @error('title')
                        <p class="text-danger"> {{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="description">{{__('Details')}}</label>
                    <textarea class="form-control" name="description" id="description" rows="10">{{old('description') ? old('description') : $job->description}}</textarea>
                    @error('description')
                        <p class="text-danger"> {{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="keywords">Keywords</label>
                    <textarea class="form-control" name="keywords" id="keywords" rows="5">{{old('keywords') ? old('keywords') : $job->keywords}}</textarea>
                    <span class="text-muted">* Seprate keywords with a comma ... PHP, CSS, jQuery,</span>
                    @error('keywords')
                        <p class="text-danger"> {{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="from">From</label>
                            <input class="form-control" type="date" name="from" id="from" value="{{old('from') ? old('from') : $job->from->format('Y-m-d')}}">
                            @error('from')
                                <p class="text-danger"> {{ $message }}</p>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label for="to">To</label>
                            <input class="form-control" type="date" name="to" id="to" value="{{old('to') ? old('to') : $job->to->format('Y-m-d')}}">
                            @error('to')
                                <p class="text-danger"> {{ $message }}</p>
                            @enderror
                        </div>
                    </div>
                </div>
                <hr>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Save</button>
                </div>
            </form>
        </div>
    </div>    
</div>

@endsection