<div>
    <div class="form-group pt-3">
        <input type="text" wire:model="search" name="search" id="search" class="form-control col-md-6 offset-md-3" placeholder="Search..." style="height: 60px; font-size:20px">
    </div>
    <hr>
    <ul class="list-group px-0 pt-3 list-group-flush">
        @forelse ($jobs as $job)
            <a href="/jobs/{{$job->id}}" class="list-group-item list-group-item-action {{$job->to  >= now() ? '' : 'disabled'}}" aria-current="true">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">{{$job->title}}</h5>
                    
                </div>
                <p class="mb-1">{{$job->keywords}}</p>
                
                    @if (($job->to >= now()))
                    <small class="badge badge-info text-light">
                        {{'Active'}}  
                    </small>
                    @else
                    <small class="badge badge-dark text-light">
                        {{'Closed'}}  
                    </small>
                    @endif
                    {{-- And some small print. --}}
                </small>
                <p class="mb-0 mt-2">From: {{$job->from->format("Y-m-d")}} / To: {{$job->to->format("Y-m-d")}}</p>
            </a>
            @empty
            <h3 class="text-center">Nothing was found!</h3>
        @endforelse
    </ul>
    <div class="d-flex justify-content-center mt-5">
        <div>{{ $jobs->links() }}</div>
    </div>
</div>
