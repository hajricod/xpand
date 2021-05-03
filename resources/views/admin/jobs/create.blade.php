@extends('layouts.admin')

@section('content')

<div class="container">
    <div class="card border-0" style="min-height: 75vh">

        <div class="card-body">
            <h4 class="text-center">Create New Job</h4>
            <hr>
            <form action="{{url('/admin/jobs')}}" method="post">
                @csrf
                <div class="form-group">
                    <label for="title">{{__('Title')}}</label>
                    <input type="text" name="title" id="title" class="form-control" value="{{old('title')}}">
                    @error('title')
                        <p class="text-danger"> {{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="description">{{__('Details')}}</label>
                    <textarea class="form-control text_editor" name="description" id="description">{{old('description')}}</textarea>
                    @error('description')
                        <p class="text-danger"> {{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="keywords">Keywords</label>
                    <textarea class="form-control" name="keywords" id="keywords" rows="5">{{old('keywords')}}</textarea>
                    <span class="text-muted">* Seprate keywords with a comma ... PHP, CSS, jQuery</span>
                    @error('keywords')
                        <p class="text-danger"> {{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="from">From</label>
                            <input class="form-control" type="date" name="from" id="from" value="{{old('from')}}">
                            @error('from')
                                <p class="text-danger"> {{ $message }}</p>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label for="to">To</label>
                            <input class="form-control" type="date" name="to" id="to" value=" {{old('to')}}">
                            @error('to')
                                <p class="text-danger"> {{ $message }}</p>
                            @enderror
                        </div>
                    </div>
                </div>
                <hr>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Create</button>
                </div>
            </form>
        </div>
    </div>    
</div>

@endsection

@section('script')
<script src="{{ asset('node_modules/tinymce/tinymce.js') }}"></script>
{{-- <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script> --}}
<script>
    tinymce.init({
        selector:'textarea.text_editor',
        plugins: 'code',
        height: 500
    });
</script>
@endsection