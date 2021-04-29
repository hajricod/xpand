<div>
    <div class="row mb-3 border-top pt-3">
        <div class="col form-inline">
            <input type="text" wire:model="search" class="form-control w-auto" placeholder="Search">
            <button wire:click="clear" class="btn btn-light mx-lg-2">Clear</button>
        </div>

        <div class="col d-flex justify-content-end">
            <select wire:model="perPage" class="form-control w-auto" name="perPage" id="perPage">
                <option value="10">10</option>
                <option value="15">15</option>
                <option value="25">25</option>
            </select>
        </div>
    </div>
    
    <div class="table-responsive-sm">
        <table class="table mb-0 table-hover">
            <thead>
            <tr>
                <th>
                    <a wire:click.prevent="sortBy('title')" role="button" href="#">
                        Title
                        @include('parts._sort-icon', ['field' => 'title'])
                    </a>
                </th>
                <th>
                    <a wire:click.prevent="sortBy('from')" role="button" href="#">
                        From
                        @include('parts._sort-icon', ['field' => 'from'])
                    </a>
                </th>
                <th>
                    <a wire:click.prevent="sortBy('to')" role="button" href="#">
                        To
                        @include('parts._sort-icon', ['field' => 'to'])
                    </a>
                </th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($jobs as $job)
                    <tr scope="row">
                        <td>{{$job->title}}</td>
                        <td>{{$job->from->format('m/d/Y')}}</td> 
                        <td>{{$job->to->format('m/d/Y')}}</td> 
                        <td>X <> []</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <hr class="mt-0">
    <div class="d-flex justify-content-between">
        <div>{{ $jobs->links() }}</div>
        <div>
            Showing {{$jobs->firstItem()}} to {{$jobs->lastItem()}} out of {{$jobs->total()}}
        </div>
    </div>
</div>
